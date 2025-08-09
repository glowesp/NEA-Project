using NEA_Project.Services;

namespace NEA_Project;

public partial class App : Application
{
    private readonly RoutingService _routingService;

    public App(RoutingService routingService)
    {
        InitializeComponent();
        _routingService = routingService;

        // Start with a LoadingPage immediately
        MainPage = new LoadingPage();

        // Begin initialization in the background
        _ = InitializeRoutingAsync();
    }

    private async Task InitializeRoutingAsync()
    {
        // Ensure the app displays LoadingPage ASAP
        await Task.Yield();
        
        string fileName = "car.routerdb";
        string destination = Path.Combine(FileSystem.Current.AppDataDirectory, fileName);
        Console.WriteLine($"Loading routerdb from: {destination}");
        Console.WriteLine($"File exists: {File.Exists(destination)}");
        Console.WriteLine($"File size: {new FileInfo(destination).Length / 1024.0 / 1024.0:F2} MB");

        try
        {
            if (!File.Exists(destination))
            {
                using var inStream = await FileSystem.OpenAppPackageFileAsync(fileName);
                using var outStream = File.Create(destination);
                await inStream.CopyToAsync(outStream);
            }

            await _routingService.InitiliseAsync(destination);
            Console.WriteLine("Routing service ready!");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Routing init failed: {ex.Message}");
            await Application.Current.MainPage.DisplayAlert(
                "Error", "Could not load routing data. Some features unavailable.", "OK");
        }

        // Once ready, transition to AppShell on UI thread
        MainThread.BeginInvokeOnMainThread(() =>
        {
            Application.Current.MainPage = new AppShell();
        });
    }
}
