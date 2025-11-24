using NEA_Project.Services;

namespace NEA_Project;

public partial class App : Application
{
    private readonly RoutingService _routingService;

    public App(RoutingService routingService)
    {
        InitializeComponent();
        _routingService = routingService;
        MainPage = new LoadingPage(); // Show loading UI immediately
    }

    protected override void OnStart()
    {
        base.OnStart();

        // Run initialization in background
        _ = Task.Run(async () =>
        {
            try
            {
                await InitializeRoutingAsync();

                MainThread.BeginInvokeOnMainThread(() =>
                {
                    try
                    {
                        MainPage = new AppShell();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Failed to create AppShell: {ex.Message}");
                        // Fallback to a simple page if AppShell fails
                        MainPage = new ContentPage
                        {
                            Content = new Label { Text = "App loaded successfully" }
                        };
                    }
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Initialization failed: {ex.Message}");
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    MainPage = new ContentPage
                    {
                        Content = new Label { Text = "Failed to initialize app" }
                    };
                });
            }
        });
    }

    private async Task InitializeRoutingAsync()
    {
        string fileName = "car.routerdb";
        string destination = Path.Combine(FileSystem.Current.AppDataDirectory, fileName);

        Console.WriteLine($"Loading routerdb from: {destination}");
        Console.WriteLine($"File exists: {File.Exists(destination)}; " +
                          $"Size: {(File.Exists(destination) ? new FileInfo(destination).Length / 1024.0 / 1024.0 : 0):F2} MB");

        try
        {
            if (!File.Exists(destination))
            {
                Console.WriteLine("Router database not found, copying from app package...");
                using var inStream = await FileSystem.OpenAppPackageFileAsync(fileName);
                using var outStream = File.Create(destination);
                await inStream.CopyToAsync(outStream);
                Console.WriteLine("Router database copied successfully");
            }

            Console.WriteLine("Initializing routing service...");
            _routingService.InitiliseAsync(destination).Wait();
            
            // Traffic service removed - using basic routing only
            Console.WriteLine("Routing service initialized with basic distance-based routing");
            
            Console.WriteLine("Routing service ready!");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Routing init failed: {ex.Message}");
            Console.WriteLine($"Stack trace: {ex.StackTrace}");

            // Don't show alert here as it might cause issues during app startup
            // The error will be handled in the OnStart method
            throw; // Re-throw to be caught by the outer try-catch
        }
    }
}
