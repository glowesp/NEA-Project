using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Itinero;
using Itinero.Data.Network;
using NEA_Project.Models;

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

                var path = await RunAStarAsync(startVertex.Value, endVertex.Value);
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
            var openSet = new SortedSet<RouteNode>();
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

            openSet.Add(startNode);
            openSetLookup[startVertexID] = startNode;
            gScore[startVertexID] = 0;
            fScore[startVertexID] = startNode.HCost;
            
            // start of algorithm
            while (openSet.Count > 0)
            {   
                // get node with lowest F cost
                var currentNode = openSet.Min;
                openSet.Remove(currentNode);
                openSetLookup.Remove(currentNode.VertexId);
                
                // add to closed set
                closedSet.Add(currentNode.VertexId);
                _nodesExplored++;
            }
            
            
        }

        private uint? ResolveCoordinateToVertex(float latitude, float longitude)
        {
            try
            {
                var resolved = _router.Resolve(Itinero.Profiles.Vehicle.Car, latitude, longitude);
                return resolved?.VertexId(0);
            }
            catch
            {
                return null;
            }
        }
    }
}