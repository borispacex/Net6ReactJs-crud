using Microsoft.AspNetCore.Authentication;
using Microsoft.EntityFrameworkCore;
using ProyectoCRUD.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllersWithViews();

// agregamos el contexto
builder.Services.AddDbContext<DBPRUEBASContext>(opt => opt.UseSqlServer(builder.Configuration.GetConnectionString("cadenaSQL")));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
}

app.UseStaticFiles();
app.UseRouting();


app.MapControllerRoute(
    name: "default",
    pattern: "{controller}/{action=Index}/{id?}");

app.MapFallbackToFile("index.html"); ;

app.Run();
