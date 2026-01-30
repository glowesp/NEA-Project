using CommunityToolkit.Maui;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Maui.Controls.Hosting;
using Microsoft.Maui.Hosting;
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
            .UseMauiMaps()
            .UseMauiCommunityToolkit()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
            });
        
        builder.Services.AddSingleton<RoutingService>();
        builder.Services.AddTransient<RoutingViewModel>();
        
        builder.Services.AddTransient<RoutingTestPage>();
        builder.Services.AddTransient<MainPage>();

        return builder.Build();
    }
}