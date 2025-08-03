using Microsoft.Extensions.Logging;
using NEA_Project.Services;
using NEA_Project.ViewModels;

namespace NEA_Project;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
            });

        // Register services
        builder.Services.AddSingleton<RoutingService>();
        builder.Services.AddTransient<RoutingViewModel>();

        return builder.Build();
    }
}