using System.Text;
using NEA_Project.Models;
using NEA_Project.Services;

namespace NEA_Project;

public partial class RoutingTestPage : ContentPage
{
    private readonly RoutingService _routingService;
    private bool _detailsVisible = false;
    
    public RoutingTestPage(RoutingService routingService)
    {
        InitializeComponent();
        _routingService = routingService;
        InitializeDefaultValues();
    }
    
    private void InitializeDefaultValues()
    {
        // Set default London coordinates
        StartLatEntry.Text = "50.872268";
        StartLonEntry.Text = "-2.962712";
        EndLatEntry.Text = "50.72561";
        EndLonEntry.Text = "-3.52692";
    }
    
    private async void OnFindRouteClicked(object sender, EventArgs e)
    {
        await FindRouteAsync();
    }
    
    private async Task FindRouteAsync()
    {
        HideAllResults();
        ShowLoading(true);
        
        try
        {
            var coordinates = ParseCoordinates();
            if (!coordinates.HasValue)
                return;
                
            var (startLat, startLon, endLat, endLon) = coordinates.Value;
            
            if (!ValidateCoordinates(startLat, startLon, endLat, endLon))
                return;
                
            if (_routingService == null)
            {
                ShowError("Routing service is not available");
                return;
            }
            
            // Check if routing service is properly initialized
            if (_routingService._router == null || _routingService._network == null)
            {
                ShowError("Routing service is not properly initialized. Please restart the app.");
                return;
            }
            
            var result = await _routingService.FindRouteAsync(startLat, startLon, endLat, endLon);
            DisplayResults(result);
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Routing error: {ex.Message}");
            ShowError($"Routing failed: {ex.Message}");
        }
        finally
        {
            ShowLoading(false);
        }
    }
    
    private (float startLat, float startLon, float endLat, float endLon)? ParseCoordinates()
    {
        if (!float.TryParse(StartLatEntry.Text, out float startLat) ||
            !float.TryParse(StartLonEntry.Text, out float startLon) ||
            !float.TryParse(EndLatEntry.Text, out float endLat) ||
            !float.TryParse(EndLonEntry.Text, out float endLon))
        {
            ShowError("Please enter valid coordinates (decimal numbers)");
            return null;
        }
        
        return (startLat, startLon, endLat, endLon);
    }
    
    private bool ValidateCoordinates(float startLat, float startLon, float endLat, float endLon)
    {
        if (!IsValidCoordinate(startLat, startLon) || !IsValidCoordinate(endLat, endLon))
        {
            ShowError("Coordinates must be valid (lat: -90 to 90, lon: -180 to 180)");
            return false;
        }
        return true;
    }
    
    private bool IsValidCoordinate(float lat, float lon)
    {
        return lat >= -90 && lat <= 90 && lon >= -180 && lon <= 180;
    }
    
    private void DisplayResults(NEA_Project.Models.RouteResult result)
    {
        UpdateResultLabels(result);
        ResultsFrame.IsVisible = true;
        
        if (result.PathFound && HasValidPath(result))
        {
            ShowRouteDetails(result.Path);
        }
    }
    
    private void UpdateResultLabels(NEA_Project.Models.RouteResult result)
    {
        PathFoundLabel.Text = result.PathFound ? "Yes" : "No";
        PathFoundLabel.TextColor = result.PathFound ? Colors.Green : Colors.Red;
        
        DistanceLabel.Text = result.PathFound ? $"{result.TotalDistance:F2} meters" : "N/A";
        
        // Format travel time nicely
        if (result.PathFound && result.EstimatedTravelTime > TimeSpan.Zero)
        {
            if (result.EstimatedTravelTime.TotalHours >= 1)
            {
                TravelTimeLabel.Text = $"{result.EstimatedTravelTime.Hours}h {result.EstimatedTravelTime.Minutes}m";
            }
            else if (result.EstimatedTravelTime.TotalMinutes >= 1)
            {
                TravelTimeLabel.Text = $"{result.EstimatedTravelTime.Minutes}m {result.EstimatedTravelTime.Seconds}s";
            }
            else
            {
                TravelTimeLabel.Text = $"{result.EstimatedTravelTime.Seconds}s";
            }
        }
        else
        {
            TravelTimeLabel.Text = "N/A";
        }
        
        
        NodesExploredLabel.Text = result.NodesExplored.ToString();
        CalculationTimeLabel.Text = $"{result.CalculationTime.TotalMilliseconds:F0} ms";
        RoutePointsLabel.Text = result.Path?.Count.ToString() ?? "0";
    }
    
    private bool HasValidPath(NEA_Project.Models.RouteResult result)
    {
        return result.Path != null && result.Path.Count > 0;
    }
    
    private void ShowRouteDetails(List<NEA_Project.Models.RouteNode> path)
    {
        RouteDetailsSection.IsVisible = true;
        PrepareRouteDetails(path);
    }
    
    private void PrepareRouteDetails(List<NEA_Project.Models.RouteNode> path)
    {
        const int maxDisplayPoints = 20;
        var details = new StringBuilder();
        
        details.AppendLine($"Route contains {path.Count} points:");
        details.AppendLine();
        
        var pointsToShow = Math.Min(path.Count, maxDisplayPoints);
        for (int i = 0; i < pointsToShow; i++)
        {
            var node = path[i];
            AppendNodeDetails(details, i + 1, node);
        }
        
        if (path.Count > maxDisplayPoints)
        {
            details.AppendLine($"... and {path.Count - maxDisplayPoints} more points");
        }
        
        RouteDetailsLabel.Text = details.ToString();
    }
    
    private static void AppendNodeDetails(StringBuilder details, int index, NEA_Project.Models.RouteNode node)
    {
        details.AppendLine($"{index:D2}. Vertex: {node.VertexId}");
        details.AppendLine($"    Lat: {node.Latitude:F6}, Lon: {node.Longitude:F6}");
        details.AppendLine($"    G-Cost: {node.GCost:F2}, H-Cost: {node.HCost:F2}");
        details.AppendLine();
    }
    
    private void ShowError(string message)
    {
        ErrorLabel.Text = message;
        ErrorFrame.IsVisible = true;
    }
    
    private void ShowLoading(bool isLoading)
    {
        LoadingIndicator.IsVisible = isLoading;
        LoadingIndicator.IsRunning = isLoading;
    }
    
    private void HideAllResults()
    {
        ResultsFrame.IsVisible = false;
        ErrorFrame.IsVisible = false;
        RouteDetailsSection.IsVisible = false;
    }
    
    private void OnClearResultsClicked(object sender, EventArgs e)
    {
        ResetForm();
        HideAllResults();
        ShowLoading(false);
        ResetDetailsToggle();
    }
    
    private void ResetForm()
    {
        InitializeDefaultValues();
    }
    
    private void ResetDetailsToggle()
    {
        _detailsVisible = false;
        ToggleDetailsButton.Text = "Show Route Details";
        RouteDetailsFrame.IsVisible = false;
    }
    
    private void OnToggleDetailsClicked(object sender, EventArgs e)
    {
        ToggleRouteDetails();
    }
    
    private void ToggleRouteDetails()
    {
        _detailsVisible = !_detailsVisible;
        RouteDetailsFrame.IsVisible = _detailsVisible;
        ToggleDetailsButton.Text = _detailsVisible ? "Hide Route Details" : "Show Route Details";
    }
}