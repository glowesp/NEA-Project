using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.ServiceModel;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using CommunityToolkit.Maui.Core;
using Itinero.Algorithms.Contracted;
using Microsoft.Maui.ApplicationModel;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.Maps;
using Microsoft.Maui.Devices.Sensors;
using Microsoft.Maui.Graphics;
using Microsoft.Maui.Maps;
using NEA_Project.Models;
using NEA_Project.Services;
using NetTopologySuite.Geometries;
using Itinero;
using Itinero.IO.Osm;
using Itinero.Data.Network;
using Itinero.LocalGeo;
using Itinero.Profiles;
using OsmSharp.API;
using UIKit;
using Coordinate = Itinero.LocalGeo.Coordinate;
using Location = Microsoft.Maui.Devices.Sensors.Location;
using Map =  Microsoft.Maui.Controls.Maps.Map;
using Permissions = Microsoft.Maui.ApplicationModel.Permissions;

namespace NEA_Project;

public partial class MainPage : ContentPage
{
    
    private bool _centeredOnce;
    private readonly RoutingService _routingService;
    private readonly HttpClient _httpClient = new HttpClient { Timeout = TimeSpan.FromSeconds(10) };
    
    public MainPage(RoutingService routingService)
    {
        InitializeComponent();
        SetButtonIcon();
        _routingService = routingService;
        Shell.SetNavBarIsVisible(this, false);
        
    }
    
    private void SetButtonIcon()
    {
        
    var config = UIKit.UIImageSymbolConfiguration.Create(scale: UIKit.UIImageSymbolScale.Small);
    var image = UIKit.UIImage.GetSystemImage("location", config);
    
    if (image != null)
    {
        RecenterButton.ImageSource = ImageSource.FromStream((_) => 
            Task.FromResult(image.AsPNG().AsStream()));
    }

    }

    public static class MapConstants
    {
        public static MapSpan InitialSpan { get; } = 
            new MapSpan(
                new Location(51.5074, -0.1278),  // London
                0.1,
                0.1
            );
    }

    private async void MapLoaded(object sender, EventArgs e)
    {
        if (_centeredOnce) return;
        _centeredOnce = true;
        await CenterMapOnLoad();
    }
    
    
    public async Task<Location?> TryGetLocationAsync()
    {
        var status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
        if (status != PermissionStatus.Granted) return null;

        var loc = await Geolocation.Default.GetLastKnownLocationAsync();
        if (loc != null) return loc;

            for (int i = 0; i < 3; i++)
            {
                loc = await Geolocation.Default.GetLocationAsync(new GeolocationRequest(GeolocationAccuracy.High,
                    TimeSpan.FromSeconds(10)));
                if (loc != null) return loc;
                await Task.Delay(500);
            }

        return null;
        
    }

    public async Task CenterMapOnLoad()
    {
        var loc = await TryGetLocationAsync();

        if (loc is null)
        {
            Map.MoveToRegion(MapConstants.InitialSpan);
            return;
        }

        for (int i = 0; i < 30 && Map.VisibleRegion == null; i++)
        {
            await Task.Delay(100);
        }
        
        var center = new Location(loc.Latitude, loc.Longitude);
        var span = MapSpan.FromCenterAndRadius(center, Distance.FromKilometers(0.444));
        MainThread.BeginInvokeOnMainThread(() => Map.MoveToRegion(span));
        
    }

    private async Task MapToLocation(RouteResult _result)
    {
        var path = _result.Path;

        Polyline mapline = new Polyline
        {
            StrokeWidth = 9,
            StrokeColor = Colors.DodgerBlue
        };
        foreach (var node in path)
        {
            mapline.Geopath.Add(new Location(node.Latitude, node.Longitude));
        }
        MainThread.BeginInvokeOnMainThread(() => 
        {
            Map.MapElements.Clear();
            Map.MapElements.Add(mapline);
        });
    }
    
    
    private void DestinationExpander_ExpandedChanged(object sender, ExpandedChangedEventArgs e)
    {
        Chevron.Text = e.IsExpanded ? "⌄" : "⌃";
    }

    private async void OnRecenterButtonClicked(object sender, EventArgs e)
    {
        var loc = await TryGetLocationAsync();


        if (loc is null)
        {
            Map.MoveToRegion(MapConstants.InitialSpan);
        }
        else
        {
            var center = new Location(loc.Latitude, loc.Longitude);
            var span = MapSpan.FromCenterAndRadius(center, Distance.FromKilometers(0.444));
            Map.MoveToRegion(span);
        }
    }

    private void MoveToLocation(Location _location, double distance = 0.444)
    {
        var span = MapSpan.FromCenterAndRadius(_location, Distance.FromKilometers(distance));
        MainThread.BeginInvokeOnMainThread(() => Map.MoveToRegion(span));
    }

    private async void DestinationEntry_OnCompleted(object? sender, EventArgs e)
    {
        var route = await FindRouteAsync();

        if (!HasValidPath(route)) return; 
        
        await MapToLocation(route);

        _ = Task.Run(async () =>
        {
            try
            {
                var coords = route.Path.Select(n => new Coordinate(n.Latitude, n.Longitude)).ToList();
                double etaSeconds = await _routingService.GetTrafficDuration(coords);

                route.EstimatedTravelTime = TimeSpan.FromSeconds(etaSeconds);

                await MainThread.InvokeOnMainThreadAsync(() =>
                {
                    Console.WriteLine($"Route found: {route.PathFound}, Path length: {route.Path.Count}, Distance: {route.TotalDistance:F2}, Travel time: {route.EstimatedTravelTime}");
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine($"ETA update failed: {ex.Message}");
            }
        });
    }

    private bool HasValidPath(RouteResult result)
    {
        return result.Path != null && result.Path.Count > 0;
    }

    private async Task <RouteResult> FindRouteAsync()
    {
        try
        {
            if (_routingService == null)
            {
                Console.WriteLine("Routing Service is not available");
                return new RouteResult();
            }

            if (_routingService._router == null || _routingService._network == null)
            {
                Console.WriteLine("Routing service is not properly initialized. Please restart app");
                return new RouteResult();
            }
            
            // change to list
            //var (destinationLoc, destDetails) = await GeoCodeAsync(DestinationEntry.Text);
            Location startingLoc;
            if (!string.IsNullOrWhiteSpace(StartingEntry.Text))
            {
                Console.WriteLine("user defined location");
                string startdetails;
                (startingLoc, startdetails) =  await GeoCodeAsync(StartingEntry.Text);
                AddPinToLocation(startingLoc, startdetails);
            }
            else
            {
                startingLoc = await TryGetLocationAsync();
            }
            
            if (destinationLoc is null || startingLoc is null) return new RouteResult();

            var lat1 = (float)startingLoc.Latitude;
            var lon1 = (float)startingLoc.Longitude;
            
            var lat2 = (float)destinationLoc.Latitude;
            var lon2 = (float)destinationLoc.Longitude;
            

            var result = await _routingService.FindRouteAsync(lat1, lon1, lat2, lon2);
            if (HasValidPath(result))
            {
                AddPinToLocation(destinationLoc, destDetails);
                MoveToLocation(destinationLoc, 0.7);
                return result;
            }

            return new RouteResult();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Routing error: {ex.Message}");
            return new RouteResult();
        }
    }
    
    private async Task<List<NEA_Project.Models.TrafficResult>> GeoCodeAsync(string query, CancellationToken ct = default)
    {
        var location = new List<TrafficResult>();
        var searchQuery = HttpUtility.ParseQueryString(string.Empty);
        var path = "geocode/autocomplete?";
        string apiKey = "eyJvcmciOiI1YjNjZTM1OTc4NTExMTAwMDFjZjYyNDgiLCJpZCI6IjU5MDBkNmQzOGY1NzQ0NjRhNWM2N2Q0ZTg3NTYyNmJhIiwiaCI6Im11cm11cjY0In0=";
        
        
        if (string.IsNullOrWhiteSpace(query))
        {
            return new List<TrafficResult>();
        }
        
        searchQuery["api_key"] = apiKey;
        if (query.Contains("United Kingdom", StringComparison.OrdinalIgnoreCase))
        {
            searchQuery["&text"] = WebUtility.HtmlEncode(query);
            
        }
        else
        {
            searchQuery["&text"] = WebUtility.HtmlEncode($"{query}, United Kingdom");
        }
        
        
        var uri = new UriBuilder()
        {
            Scheme = "https",
            Host = "api.openrouteservice.org",
            Path = path,
            Query =  searchQuery.ToString()
        }.Uri;

        Console.WriteLine(uri);

        try
        {
            using var resp = await _httpClient.GetAsync(uri, ct);
            var body = await resp.Content.ReadAsStringAsync(ct);

            if (!resp.IsSuccessStatusCode)
            {
                Console.WriteLine("could not receive data");
                Console.WriteLine($"{resp.StatusCode}, {body}");
                return new List<TrafficResult>();
            }

            using var doc = JsonDocument.Parse(body);
            var root = doc.RootElement;

            if (root.TryGetProperty("features", out var features) && features.ValueKind == JsonValueKind.Array)
            {
                foreach (var feature in features.EnumerateArray())
                {
                    var item = new TrafficResult();

                    if (features.TryGetProperty("geometry", out var geometry) &&
                        geometry.TryGetProperty("coordinates", out var coords) && coords.GetArrayLength() >= 2)
                    {
                        item.Lat = coords[0].GetDouble();
                        item.Lon = coords[1].GetDouble();
                    }

                    if (features.TryGetProperty("properties", out var props))
                    {
                        if (props.TryGetProperty("region", out var region))
                        {
                            item.Region = region.ToString();
                        }
                        if (props.TryGetProperty("label", out var label))
                        {
                            int commaIndex = label.ToString().IndexOf(',');
                            item.Label = label.ToString().Substring(0, commaIndex).Trim();
                        }
                    }

                    if (!string.IsNullOrWhiteSpace(item.Label))
                    {
                        location.Add(item);
                    }
                }
            }

            return location;
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
            return new List<TrafficResult>();
        }
        
        //var locations = await Geocoding.Default.GetLocationsAsync(query);
        
    }

    private void AddPinToLocation(Location location, string address)
    {
        Map.Pins.Clear();
        Pin pin = new Pin()
        {
            Label = $"{address}",
            Address = "Destination",
            Type = PinType.SearchResult,
            Location = location
        };
        Map.Pins.Add(pin);
    }

    private void SelectableItemsView_OnSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is NEA_Project.Models.)
    }
}



    
    