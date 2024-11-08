using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace EFCore.AdventureWorksLT2022
{
    internal class Program
    {
        static void Main(string[] args)
        {
            HostApplicationBuilder builder = Host.CreateApplicationBuilder(args);

            builder.Services.AddDbContext<DbContext>(options => 
                options.UseSqlServer("Server=localhost;Database=AdventureWorksLT2022;Trusted_Connection=True;TrustServerCertificate=True"));

            // Register dependencies in the container here:
            //builder.Services.AddScoped<IBlaBlaRepository, BlaBlaRepository>();


            using IHost host = builder.Build();
            using IServiceScope serviceScope = host.Services.CreateScope();

            // Your application here:

            Console.ReadLine();
        }
    }
}