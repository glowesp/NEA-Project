namespace NEA_Project.Models
{
    public class TrafficInfo
    {
        public int currentSpeed { get; set; }
        public double confidence { get; set; }
        public bool roadClosure { get; set; }
        public int freeflowSpeed { get; set; }
        public int currentTravelTime { get; set; }
    }
}