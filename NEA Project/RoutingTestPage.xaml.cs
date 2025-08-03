using System.Text;
using NEA_Project.Services;

namespace NEA_Project;

public partial class RoutingTestPage : ContentPage
{
    private readonly RoutingService _routingService;
    private bool _detailsVisible = false;
    
    // Inject the service through constructor
    public RoutingTestPage(RoutingService routingService)
    {
        InitializeComponent();
        _routingService = routingService;
    }
    
    private async void OnFindRouteClicked(object sender, EventArgs e)
    {
        // Hide previous results
        ResultsFrame.IsVisible = false;
        ErrorFrame.IsVisible = false;
        RouteDetailsSection.IsVisible = false;
        
        // Show loading
        LoadingIndicator.IsVisible = true;
        LoadingIndicator.IsRunning = true;
        
        try
        {
            // Parse coordinates
            if (!float.TryParse(StartLatEntry.Text, out float startLat) ||
                !float.TryParse(StartLonEntry.Text, out float startLon) ||
                !float.TryParse(EndLatEntry.Text, out float endLat) ||
                !float.TryParse(EndLonEntry.Text, out float endLon))
            {
                ShowError("Please enter valid coordinates (decimal numbers)");
                return;
            }
            
            // Validate coordinate ranges
            if (!IsValidCoordinate(startLat, startLon) || !IsValidCoordinate(endLat, endLon))
            {
                ShowError("Coordinates must be valid (lat: -90 to 90, lon: -180 to 180)");
                return;
            }
            
            // Check if routing service is ready
            if (_routingService == null)
            {
                ShowError("Routing service is not available");
                return;
            }
            
            // Find route
            var result = await _routingService.FindRouteAsync(startLat, startLon, endLat, endLon);
            
            // Display results
            DisplayResults(result);
            
        }
        catch (Exception ex)
        {
            ShowError($"Routing failed: {ex.Message}");
        }
        finally
        {
            // Hide loading
            LoadingIndicator.IsVisible = false;
            LoadingIndicator.IsRunning = false;
        }
    }
    
    private void DisplayResults(NEA_Project.Models.RouteResult result)
    {
        // Show main results
        PathFoundLabel.Text = result.PathFound ? "Yes" : "No";
        PathFoundLabel.TextColor = result.PathFound ? Colors.Green : Colors.Red;
        
        DistanceLabel.Text = result.PathFound ? $"{result.TotalDistance:F2} units" : "N/A";
        NodesExploredLabel.Text = result.NodesExplored.ToString();
        CalculationTimeLabel.Text = $"{result.CalculationTime.TotalMilliseconds:F0} ms";
        RoutePointsLabel.Text = result.Path?.Count.ToString() ?? "0";
        
        ResultsFrame.IsVisible = true;
        
        // Show route details section if path found
        if (result.PathFound && result.Path != null && result.Path.Count > 0)
        {
            RouteDetailsSection.IsVisible = true;
            PrepareRouteDetails(result.Path);
        }
    }
    
    private void PrepareRouteDetails(List<NEA_Project.Models.RouteNode> path)
    {
        var details = new StringBuilder();
        details.AppendLine($"Route contains {path.Count} points:");
        details.AppendLine();
        
        for (int i = 0; i < Math.Min(path.Count, 20); i++) // Show first 20 points
        {
            var node = path[i];
            details.AppendLine($"{i + 1:D2}. Vertex: {node.VertexId}");
            details.AppendLine($"    Lat: {node.Latitude:F6}, Lon: {node.Longitude:F6}");
            details.AppendLine($"    G-Cost: {node.GCost:F2}, H-Cost: {node.HCost:F2}");
            details.AppendLine();
        }
        
        if (path.Count > 20)
        {
            details.AppendLine($"... and {path.Count - 20} more points");
        }
        
        RouteDetailsLabel.Text = details.ToString();
    }
    
    private void ShowError(string message)
    {
        ErrorLabel.Text = message;
        ErrorFrame.IsVisible = true;
    }
    
    private bool IsValidCoordinate(float lat, float lon)
    {
        return lat >= -90 && lat <= 90 && lon >= -180 && lon <= 180;
    }
    
    private void OnClearResultsClicked(object sender, EventArgs e)
    {
        // Reset form
        StartLatEntry.Text = "51.5074";
        StartLonEntry.Text = "-0.1278";
        EndLatEntry.Text = "51.5155";
        EndLonEntry.Text = "-0.0922";
        
        // Hide all result sections
        ResultsFrame.IsVisible = false;
        ErrorFrame.IsVisible = false;
        RouteDetailsSection.IsVisible = false;
        LoadingIndicator.IsVisible = false;
        LoadingIndicator.IsRunning = false;
        
        _detailsVisible = false;
        ToggleDetailsButton.Text = "Show Route Details";
        RouteDetailsFrame.IsVisible = false;
    }
    
    private void OnToggleDetailsClicked(object sender, EventArgs e)
    {
        _detailsVisible = !_detailsVisible;
        RouteDetailsFrame.IsVisible = _detailsVisible;
        ToggleDetailsButton.Text = _detailsVisible ? "Hide Route Details" : "Show Route Details";
    }
}