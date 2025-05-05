
namespace cafeum
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.

            builder.Services.AddControllers();
            builder.Services.AddDbContext<AppContext>();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            builder.Services.AddCors(options =>
            {
                options.AddPolicy("AllowAllOrigins", builder =>
                {
                    builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
                });
            });
            
            
            builder.Services.AddCors(options =>
            {
                options.AddPolicy("Access-Control-Allow-Origin", builder =>
                {
                    builder.AllowAnyOrigin().
                    AllowAnyMethod().
                    AllowAnyHeader();
                });
            });
            
            
            /*builder.Services.AddCors(options =>
            {
                options.AddPolicy("Access-Control-Allow-Origin",
                    builder => builder
                        .WithOrigins("https://vulture-golden-willingly.ngrok-free.app") // Replace with your actual ngrok URL
                        .AllowAnyMethod()
                        .AllowAnyHeader());
            });*/
            

            var app = builder.Build();
            app.UseCors("Access-Control-Allow-Origin");
            app.UseCors("AllowAllOrigins");
            //app.UseCors("AllowNgrok");
            
            



            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();
            
            //app.UseCors(MyAllowSpecificOrigins);

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}
