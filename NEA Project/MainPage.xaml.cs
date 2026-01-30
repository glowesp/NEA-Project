using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
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
using OsmSharp.API;
using Map =  Microsoft.Maui.Controls.Maps.Map;
using Permissions = Microsoft.Maui.ApplicationModel.Permissions;

namespace NEA_Project;

public partial class MainPage : ContentPage
{
    private bool _centeredOnce;
    private readonly RoutingService _routingService;
    
    public MainPage()
    {
        InitializeComponent();
        Shell.SetNavBarIsVisible(this, false);
        
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
                loc = await Geolocation.Default.GetLocationAsync(new GeolocationRequest(GeolocationAccuracy.Medium,
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
            StrokeWidth = 12,
            StrokeColor = Colors.Aquamarine
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

    private async void DestinationEntry_OnCompleted(object? sender, EventArgs e)
    {
        var route = await FindRouteAsync();
        await MapToLocation(route);
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
            
            var destinationLoc = await GeoCodeAsync(DestinationEntry.Text);
            var startingLoc = await TryGetLocationAsync();
            if (destinationLoc is null || startingLoc is null) return new RouteResult();

            var lat1 = (float)startingLoc.Latitude;
            var lon1 = (float)startingLoc.Longitude;
            
            var lat2 = (float)destinationLoc.Latitude;
            var lon2 = (float)destinationLoc.Longitude;
            

            var result = await _routingService.FindRouteAsync(lat1, lon1, lat2, lon2);
            if (HasValidPath(result))
            {
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
    
    private async Task<Location?> GeoCodeAsync(string query)
    {
        if (string.IsNullOrWhiteSpace(query))
        {
            return null;
        }

        var locations = await Geocoding.Default.GetLocationsAsync(query);
        return locations?.FirstOrDefault();
    }
}



    
    