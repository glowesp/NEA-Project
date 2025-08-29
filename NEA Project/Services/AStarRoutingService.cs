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
    public class RoutingService : IDisposable
        {
            // --- Variables for Itinero routing network --- 
            public RouterDb? _routerDb;
            public Router? _router;
            public RoutingNetwork? _network;
            private Stream? _routerDbStream; // Keep the stream open
            
            public Task InitiliseAsync(string routerDbPath)
            {
                try
                {
                    Console.WriteLine($"Starting routing service initialization...");
                    Console.WriteLine($"Router DB path: {routerDbPath}");
                    Console.WriteLine($"File exists: {File.Exists(routerDbPath)}");
                    
                    if (!File.Exists(routerDbPath))
                    {
                        throw new FileNotFoundException($"Router database file not found: {routerDbPath}");
                    }
                    
                    Console.WriteLine($"Opening router database file...");
                    _routerDbStream = File.OpenRead(routerDbPath);
                    Console.WriteLine($"File size: {_routerDbStream.Length} bytes");
                    Console.WriteLine($"Stream can read: {_routerDbStream.CanRead}");
                    
                    Console.WriteLine($"Deserializing router database...");
                    _routerDb = RouterDb.Deserialize(_routerDbStream, RouterDbProfile.NoCache);
                    Console.WriteLine($"Router database deserialized successfully");
                    Console.WriteLine($"Stream still readable after deserialization: {_routerDbStream.CanRead}");
                    
                    Console.WriteLine($"Creating router...");
                    _router = new Router(_routerDb);
                    Console.WriteLine($"Router created successfully");
                    
                    Console.WriteLine($"Getting network...");
                    _network = _routerDb.Network;
                    Console.WriteLine($"Network retrieved successfully");
                    
                    Console.WriteLine($"Routing service initialization completed successfully");
                    return Task.CompletedTask;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Routing service initialization failed: {ex.Message}");
                    Console.WriteLine($"Stack trace: {ex.StackTrace}");
                    // --- If routing service fails for any particular reason ---
                    throw new InvalidOperationException($"Failed to initialize routing service: {ex.Message}", ex);
                }
            }
            
            // Add profiles support (fastest, shortest)
            public async Task<Models.RouteResult> FindRouteAsync(float startLat, float startLon, float endLat, float endLon)
            {
                var stopwatch = Stopwatch.StartNew();
                var result = new Models.RouteResult();
    
                try
                {
                    // Check if routing service is properly initialized
                    if (_router == null || _network == null)
                    {
                        Console.WriteLine("Routing service not initialized");
                        result.PathFound = false;
                        return result;
                    }
                    
                    Console.WriteLine($"Finding route from ({startLat}, {startLon}) to ({endLat}, {endLon})");
                    
                    var startVertex = ResolveCoordinateToVertex(startLat, startLon);
                    var endVertex = ResolveCoordinateToVertex(endLat, endLon);
    
                    if (!startVertex.HasValue || !endVertex.HasValue)
                    {
                        Console.WriteLine("Could not resolve coordinates to vertices");
                        result.PathFound = false;
                        return result;
                    }
    
                    Console.WriteLine($"Resolved vertices: start={startVertex.Value}, end={endVertex.Value}");
                    var path = await RunAStarASync(startVertex.Value, endVertex.Value);
                    result.Path = path;
                    result.PathFound = path.Count > 0;
                    result.TotalDistance = CalculateTotalDistance(path);
                    result.NodesExplored = _nodesExplored;
                    
                    // Calculate estimated travel time
                    if (result.PathFound && result.TotalDistance > 0)
                    {
                        result.EstimatedTravelTime = CalculateEstimatedTravelTime(result.TotalDistance);
                    }
                    
                    Console.WriteLine($"Route found: {result.PathFound}, Path length: {path.Count}, Distance: {result.TotalDistance:F2}, Travel time: {result.EstimatedTravelTime}");
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Route finding failed: {ex.Message}");
                    Console.WriteLine($"Stack trace: {ex.StackTrace}");
                    result.PathFound = false;
                }
                finally
                {
                    stopwatch.Stop();
                    result.CalculationTime = stopwatch.Elapsed;
                }
    
                return result;
    
            }
    
            private int _nodesExplored = 0;
    
            private async Task<List<Models.RouteNode>> RunAStarASync(uint startVertexId, uint endVertexId)
            {
                try
                {
                    if (_network == null)
                    {
                        Console.WriteLine("Network is null in RunAStarASync");
                        return new List<RouteNode>();
                    }
                    
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
                    var startCoord = _network.GetVertex(startVertexId);
                    var endCoord = _network.GetVertex(endVertexId);
                    
                    // Note: GetVertex should never return null for valid vertex IDs
                    // but we'll add a safety check just in case
                    if (startCoord.Latitude == 0 && startCoord.Longitude == 0 && 
                        endCoord.Latitude == 0 && endCoord.Longitude == 0)
                    {
                        Console.WriteLine("Invalid vertex coordinates");
                        return new List<RouteNode>();
                    }
    
                var startNode = new Models.RouteNode
                {
                    VertexId = startVertexId,
                    Latitude = startCoord.Latitude,
                    Longitude = startCoord.Longitude,
                    GCost = 0,
                    HCost = CalculateHeuristic(startCoord.Latitude, startCoord.Longitude, endCoord.Latitude,
                        endCoord.Longitude)
                };
                
                // adds starting location to sortedset
                openSet.Add(startNode);
                // adds reference to startnode in dictionary using vertexID as a key
                openSetLookup[startVertexId] = startNode;
                // first node with a gscore as 0 (distance from start is 0)
                gScore[startVertexId] = 0;
                fScore[startVertexId] = startNode.HCost;
                
                // start of algorithm
                while (openSet.Count > 0)
                {   
                    // get node with lowest F cost
                    var currentNode = openSet.Min;
                    if (currentNode != null)
                    {
                        openSet.Remove(currentNode);
                        openSetLookup.Remove(currentNode.VertexId);
                    }
                    
                    // check if we have reached destination
                    if (currentNode != null && currentNode.VertexId == endVertexId)
                    {
                        return ReconstructPath(currentNode);
                    }
                    
                    // add to closed set
                    if (currentNode != null)
                    {
                        closedSet.Add(currentNode.VertexId);
                        _nodesExplored++;
                    }
                    
                    if (currentNode == null) continue;
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
    
                            var neighbourNode = new Models.RouteNode()
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
                                var existingNode = openSetLookup[neighbourId];
                                if (existingNode != null)
                                {
                                    openSet.Remove(existingNode);
                                }
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
                catch (Exception ex)
                {
                    Console.WriteLine($"Error in RunAStarASync: {ex.Message}");
                    return new List<RouteNode>();
                }
            }
    
            private uint? ResolveCoordinateToVertex(float lat, float lon)
            {
                try
                {
                    if (_router == null || _routerDb == null || _network == null)
                    {
                        Console.WriteLine("Routing components not initialized");
                        return null;
                    }
                    
                    // Check if the stream is still accessible
                    if (_routerDbStream == null || !_routerDbStream.CanRead)
                    {
                        Console.WriteLine("Router database stream is null or not readable");
                        return null;
                    }
                    
                    var profile = Vehicle.Car.Shortest();
                    
                    Console.WriteLine($"Trying to resolve point: {lat}, {lon}");
                    
                    var result = _router.TryResolveConnected(profile, lat, lon, radiusInMeter: 1000f, maxSearchDistance: 200f); 
                    
                    if (result.IsError)
                    {
                        Console.WriteLine($"Failed to resolve point: {result.ErrorMessage}");
                        return null;
                    }
                    
                    var point = result.Value;
                    Console.WriteLine($"  VertexId: {point.VertexId(_routerDb)} (edge id: {point.EdgeId}, position: {$"{point.Latitude}, {point.Longitude}"})");
    
                    var vid = point.VertexId(_routerDb);
                    
                    if (vid == uint.MaxValue || vid == uint.MaxValue - 1) // means it's on an edge
                    {
                        var edge = _network.GetEdge(point.EdgeId);
                        // pick whichever vertex is closer
                        var v1 = _network.GetVertex(edge.From);
                        var v2 = _network.GetVertex(edge.To);
                        var dist1 = CalculateHeuristic(lat, lon, v1.Latitude, v1.Longitude);
                        var dist2 = CalculateHeuristic(lat, lon, v2.Latitude, v2.Longitude);
                        vid = dist1 < dist2 ? edge.From : edge.To;
                    }
    
                    return vid;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error resolving coordinate to vertex: {ex.Message}");
                    Console.WriteLine($"Stack trace: {ex.StackTrace}");
                    return null;
                }
            }
            
            
    
            private float CalculateHeuristic(float lat1, float lon1, float lat2, float lon2)
            {
                try
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
                catch (Exception ex)
                {
                    Console.WriteLine($"Error calculating heuristic: {ex.Message}");
                    return float.MaxValue; // Return high cost to avoid this path
                }
            }
    
            private float GetEdgeWeight(RoutingEdge edge)
            {   
                try
                {
                    if (edge?.Data == null)
                    {
                        Console.WriteLine("Edge or edge data is null");
                        return float.MaxValue; // Return high cost to avoid this edge
                    }
                    
                    Console.WriteLine($"Edge distance: {edge.Data.Distance}");
                    return edge.Data.Distance;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error getting edge weight: {ex.Message}");
                    return float.MaxValue; // Return high cost to avoid this edge
                }
            }
            
            private float CalculateTotalDistance(List<Models.RouteNode> path)
            {
                try
                {
                    if (path == null || path.Count < 2) return 0;
    
                    float totalDistance = 0;
                    for (int i = 1; i < path.Count; i++)
                    {
                        if (path[i - 1] != null && path[i] != null)
                        {
                            totalDistance += CalculateHeuristic(path[i - 1].Latitude, path[i - 1].Longitude, path[i].Latitude,
                                path[i].Longitude);
                        }
                    }
    
                    return totalDistance;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error calculating total distance: {ex.Message}");
                    return 0;
                }
            }
            
            /// <summary>
            /// Calculates estimated travel time based on distance and average speed
            /// </summary>
            /// <param name="distanceInMeters">Total distance in meters</param>
            /// <param name="averageSpeedKmh">Average speed in kilometers per hour</param>
            /// <returns>Estimated travel time as TimeSpan</returns>
            private TimeSpan CalculateEstimatedTravelTime(float distanceInMeters, float averageSpeedKmh = 50f)
            {
                try
                {
                    // Convert distance from meters to kilometers
                    float distanceInKm = distanceInMeters / 1000f;
                    
                    // Calculate time in hours: time = distance / speed
                    float timeInHours = distanceInKm / averageSpeedKmh;
                    
                    // Convert hours to TimeSpan
                    TimeSpan travelTime = TimeSpan.FromHours(timeInHours);
                    
                    Console.WriteLine($"Travel time calculation: {distanceInMeters:F0}m / {averageSpeedKmh}km/h = {travelTime}");
                    
                    return travelTime;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error calculating travel time: {ex.Message}");
                    return TimeSpan.Zero;
                }
            }
            
            private List<Models.RouteNode> ReconstructPath(Models.RouteNode endNode)
            {
                try
                {
                    if (endNode == null)
                    {
                        Console.WriteLine("End node is null in ReconstructPath");
                        return new List<RouteNode>();
                    }
                    
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
                catch (Exception ex)
                {
                    Console.WriteLine($"Error reconstructing path: {ex.Message}");
                    return new List<RouteNode>();
                }
            }
            
            // Dispose method to clean up resources
            public void Dispose()
            {
                _routerDbStream?.Dispose();
                _routerDbStream = null;
                _routerDb = null;
                _router = null;
                _network = null;
            }
        }
}