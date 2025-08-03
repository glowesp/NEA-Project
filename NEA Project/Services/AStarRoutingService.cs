using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Itinero;
using Itinero.IO.Osm;
using Itinero.Data.Network;
using Itinero.LocalGeo;
using Itinero.Profiles;
using NEA_Project.Models;
using Vehicle = Itinero.Osm.Vehicles.Vehicle;

namespace NEA_Project.Services
{
    public class RoutingService
    {
        // --- Variables for Itinero routing network --- 
        private RouterDb _routerDb;
        private Router _router;
        private RoutingNetwork _network;
        
        public async Task InitiliseAsync(string routerDbPath)
        {
            try
            {
                using var stream = File.OpenRead(routerDbPath);
                _routerDb = RouterDb.Deserialize(stream);
                _router = new Router(_routerDb);
                _network = _routerDb.Network;
            }
            catch (Exception ex)
            {
                // --- If routing service fails for any particular reason ---
                throw new InvalidOperationException($"Failed to initilize routing service {ex.Message}");
            }
        }
        
        // Add profiles support (fastest, shortest)
        public async Task<RouteResult> FindRouteAsync(float startLat, float startLon, float endLat, float endLon)
        {
            var stopwatch = Stopwatch.StartNew();
            var result = new NEA_Project.Models.RouteResult();

            try
            {
                var startVertex = ResolveCoordinateToVertex(startLat, startLon);
                var endVertex = ResolveCoordinateToVertex(endLat, endLon);

                if (startVertex == null || endVertex == null)
                {
                    result.PathFound = false;
                    return result;
                }

                var path = await RunAStarASync(startVertex.Value, endVertex.Value);
                result.Path = path;
                result.PathFound = path.Count > 0;
                result.TotalDistance = CalculateTotalDistance(path);
                result.NodesExplored = _nodesExplored;
            }
            catch (Exception ex)
            {
                result.PathFound = false;
                // Log exception in app
            }
            finally
            {
                stopwatch.Stop();
                result.CalculationTime = stopwatch.Elapsed;
            }

            return result;

        }

        private int _nodesExplored = 0;

        private async Task<List<RouteNode>> RunAStarASync(uint startVertexID, uint endVertexID)
        {
            _nodesExplored = 0;
            
            // priority queue for open set (nodes to be evaluated)
            // sorted set keeps routenodes ordered by f-cost
            var openSet = new SortedSet<RouteNode>();
            // dictionary holds routenodes ordered by vertexID
            var openSetLookup = new Dictionary<uint, RouteNode>();
            
            // nodes already evaluated
            var closedSet = new HashSet<uint>();
            
            // cost tracking
            var gScore = new Dictionary<uint, float>();
            var fScore = new Dictionary<uint, float>();
            
            // starting and end coordinates
            var startCoord = _network.GetVertex(startVertexID);
            var endCoord = _network.GetVertex(endVertexID);

            var startNode = new RouteNode
            {
                VertexId = startVertexID,
                Latitude = startCoord.Latitude,
                Longitude = startCoord.Longitude,
                GCost = 0,
                HCost = CalculateHeuristic(startCoord.Latitude, startCoord.Longitude, endCoord.Latitude,
                    endCoord.Longitude)
            };
            
            // adds starting location to sortedset
            openSet.Add(startNode);
            // adds reference to startnode in dictionary using vertexID as a key
            openSetLookup[startVertexID] = startNode;
            // first node with a gscore as 0 (distance from start is 0)
            gScore[startVertexID] = 0;
            fScore[startVertexID] = startNode.HCost;
            
            // start of algorithm
            while (openSet.Count > 0)
            {   
                // get node with lowest F cost
                var currentNode = openSet.Min;
                openSet.Remove(currentNode);
                openSetLookup.Remove(currentNode.VertexId);
                
                // check if we have reached destination
                if (currentNode.VertexId == endVertexID)
                {
                    return ReconstructPath(currentNode);
                }
                
                // add to closed set
                closedSet.Add(currentNode.VertexId);
                _nodesExplored++;
                
                var edges = _network.GetEdges(currentNode.VertexId);
                foreach (var edge in edges)
                {
                    // next closest edge
                    var neighbourId = edge.To;
                    
                    // skips if evaluated
                    if (closedSet.Contains(neighbourId))
                    {
                        continue;
                    }

                    var edgeWeight = GetEdgeWeight(edge);
                    // tentativeGScore, current gscore + edge weight of neighbour node
                    var tentativeGScore = gScore[currentNode.VertexId] + edgeWeight;
                    
                    // if gscore dict does not contain that neighbour and
                    if (!gScore.ContainsKey(neighbourId) || tentativeGScore < gScore[neighbourId])
                    {
                        var neighbourCoord = _network.GetVertex(neighbourId);
                        var heuristic = CalculateHeuristic(neighbourCoord.Latitude, neighbourCoord.Longitude,
                            endCoord.Latitude, endCoord.Longitude);

                        var neighbourNode = new RouteNode()
                        {
                            VertexId = neighbourId,
                            Latitude = neighbourCoord.Latitude,
                            Longitude = neighbourCoord.Longitude,
                            GCost = tentativeGScore,
                            HCost = heuristic,
                            Parent = currentNode
                        };
                        
                        // cost of current node + neighbour node
                        gScore[neighbourId] = tentativeGScore;
                        // cost of all prev nodes + how far it is from the end
                        fScore[neighbourId] = tentativeGScore + heuristic;

                        if (openSetLookup.ContainsKey(neighbourId))
                        {
                            openSet.Remove(openSetLookup[neighbourId]);
                        }

                        openSet.Add(neighbourNode);
                        openSetLookup[neighbourId] = neighbourNode;
                    }
                }

                if (_nodesExplored % 1000 == 0)
                {
                    await Task.Delay(1);
                }
            }
            
            // no path found
            return new List<RouteNode>();
        }

        private uint? ResolveCoordinateToVertex(float latitude, float longitude, float maxSnapDistance = 200f, Profile? profile = null)
        {
            profile ??= Vehicle.Car.Fastest();
           
            var coordinate = new Coordinate(latitude, longitude);
            var result = _router.TryResolve(profile, coordinate, maxSnapDistance);

            if (result.IsError)
            {
                return null;
            }

            return result.Value.VertexId(_routerDb);

        }

        private float CalculateHeuristic(float lat1, float lon1, float lat2, float lon2)
        {
            // haversine dist
            const float R = 6371000; // radius of earth in meters (hardcoded i know)
            
            // converts lat/lon angles into radians
            var lat1Rad = lat1 * Math.PI / 180;
            var lat2Rad = lat2 * Math.PI / 180;
            
            // difference between lat and lon in radians
            var deltaLatRad = (lat2 - lat1) * Math.PI / 180;
            var deltaLonRad = (lon2 - lon1) * Math.PI / 180;

            var a = Math.Pow(Math.Sin(deltaLatRad), 2) +
                    Math.Cos(lat1Rad) * Math.Cos(lat2Rad) * Math.Pow(Math.Sin(deltaLonRad), 2);

            var c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
            return (float)(R * c);

        }

        private float GetEdgeWeight(RoutingEdge edge)
        {
            return edge.Data.Distance;
        }
        
        private float CalculateTotalDistance(List<RouteNode> path)
        {
            if (path.Count < 2) return 0;

            float totalDistance = 0;
            for (int i = 1; i < path.Count; i++)
            {
                totalDistance += CalculateHeuristic(path[i - 1].Latitude, path[i - 1].Longitude, path[i].Latitude,
                    path[i].Longitude);
                
            }

            return totalDistance;
        }
        
        private List<RouteNode> ReconstructPath(RouteNode endNode)
        {
            var path = new List<RouteNode>();
            var current = endNode;

            while (current != null)
            {
                path.Add(current);
                current = current.Parent;
            }

            path.Reverse();
            return path;
        }
    }
}