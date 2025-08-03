using System.ComponentModel;
using System.Runtime.CompilerServices;
using Microsoft.Maui.Controls;
using NEA_Project.Services;
using NEA_Project.Models;

namespace NEA_Project.ViewModels
{
    public class RoutingViewModel : INotifyPropertyChanged
    {
        private readonly RoutingService _routingService;
        private string _statusText = "Ready";
        private bool _isCalculating = false;

        public RoutingViewModel(RoutingService routingService)
        {
            _routingService = routingService;
            CalculateRouteCommand = new Command(async () => await CalculateRoute(), () => !IsCalculating);
        }

        public Command CalculateRouteCommand { get; }

        // Input properties
        public float StartLatitude { get; set; } = 51.5074f; // London example
        public float StartLongitude { get; set; } = -0.1278f;
        public float EndLatitude { get; set; } = 51.5155f; // Near London
        public float EndLongitude { get; set; } = -0.0922f;

        // Output properties
        public string StatusText
        {
            get => _statusText;
            set
            {
                _statusText = value;
                OnPropertyChanged();
            }
        }

        public bool IsCalculating
        {
            get => _isCalculating;
            set
            {
                _isCalculating = value;
                OnPropertyChanged();
                CalculateRouteCommand.ChangeCanExecute();
            }
        }

        public RouteResult LastRouteResult { get; private set; }

        private async Task CalculateRoute()
        {
            IsCalculating = true;
            StatusText = "Calculating route...";

            try
            {
                var result = await _routingService.FindRouteAsync(
                    StartLatitude, StartLongitude,
                    EndLatitude, EndLongitude);

                LastRouteResult = result;

                if (result.PathFound)
                {
                    StatusText = $"Route found! Distance: {result.TotalDistance:F0}m, " +
                               $"Time: {result.CalculationTime.TotalMilliseconds:F0}ms, " +
                               $"Nodes explored: {result.NodesExplored}";
                }
                else
                {
                    StatusText = "No route found between the specified points.";
                }
            }
            catch (Exception ex)
            {
                StatusText = $"Error: {ex.Message}";
            }
            finally
            {
                IsCalculating = false;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}