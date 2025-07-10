using System;
using Itinero;
using Itinero.IO.Osm;
using Itinero.Osm.Vehicles;

namespace NEA_Project.Models
{
    public class RouteNode : IComparable<RouteNode>
    {
        public uint VertexId { get; set; }
        public float Latitude { get; set; }
        public float Longitude { get; set; } 
        public float HCost { get; set; } // Distance from start
        public float GCost { get; set; } // Heuristic distance to end (Haversine distance)
        public float FCost => GCost + HCost;
        public RouteNode Parent { get; set; }

        public int CompareTo(RouteNode other)
        {
            return FCost.CompareTo(other.FCost);
        }
    }
    
    
}