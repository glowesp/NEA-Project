using NEA_Project.Services;

namespace NEA_Project;

public partial class App : Application
{
    InitializeComponent();
    MainPage = new LoadingPage(); // Lightweight UI displayed immediately

    _ = InitializeFeatureAsync();
}



public partial class App : Application
{
    
    private readonly RoutingService _routingService;
    public App(RoutingService routingService)
    {

        InitializeComponent();
        _routingService = routingService;

        // Initialize routing service asynchronously
        InitializeRoutingServiceAsync();

        // Set MainPage - REMOVE the CreateWindow override
        MainPage = new AppShell();

    }
    
    private async void InitializeRoutingServiceAsync()
    {
        try
        {
            string fileName = "uk.routerdb";
            string destinationPath = Path.Combine(FileSystem.Current.AppDataDirectory, fileName);

            if (!File.Exists(destinationPath))
            {
                // Copy from app package to app data directory
                using var stream = await FileSystem.OpenAppPackageFileAsync(fileName);
                using var destStream = File.Create(destinationPath);
                await stream.CopyToAsync(destStream);
            }

            await _routingService.InitiliseAsync(destinationPath);
            Console.WriteLine("Routing service initialized successfully");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed to initialize routing service: {ex.Message}");

            if (Application.Current?.MainPage != null)
            {
                await Application.Current.MainPage.DisplayAlert(
                    "Initialization Error",
                    "Could not load routing data. Some features may not be available.",
                    "OK");
            }
        }
    }

    
}