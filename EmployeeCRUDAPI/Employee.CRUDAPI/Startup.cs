using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Employee.DAL.Employee;
using Employee.Interfaces.Employee;
using Employee.Service.Employee;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Employee.CRUDAPI
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddCors(options => {
                options.AddPolicy("CorsPolicy", x => x.AllowAnyMethod()
                                                    .AllowAnyOrigin()
                                                    .AllowAnyHeader()
                                                    .AllowCredentials());
            });

            //Dependency Injection 
            services.AddScoped<IEmployeeService, EmployeeService>();
            services.AddScoped<IEmployeeDAL, EmployeeDAL>();
            //services.AddAutoMapper(typeof(Startup));

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseCors("CorsPolicy");
            app.UseMvc();
        }
    }
}
