using System.Collections.Generic;

namespace NEA_Project.Models
{
    public class RouteResult
    {
        public List<RouteNode> Path { get; set; } = new List<RouteNode>();
        public float TotalDistance { get; set; }
        public TimeSpan CalculationTime { get; set; }
        public int NodesExplored { get; set; }
        public bool PathFound { get; set; }
        public TimeSpan EstimatedTravelTime { get; set; } // New property for estimated travel time
        
    }
}