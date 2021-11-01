using GestaoCompras.Domain.Interfaces;
using GestaoCompras.Infra.Data.Context;
using GestaoCompras.Infra.Data.Repository;
using GestaoCompras.Services.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Newtonsoft.Json.Serialization;

namespace GestaoCompras.Api
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
            services.AddCors();
            services.AddControllers().AddNewtonsoftJson(options => {options.SerializerSettings.ContractResolver = new DefaultContractResolver();});

            services.AddTransient<IServiceProduto, ProdutoService>();
            services.AddTransient<IServiceCenarioCompra, CenarioCompraService>();
            services.AddTransient<IServiceHistoricoCompra, HistoricoCompraService>();
            services.AddTransient<IServiceProdutoOperacao, ProdutoOperacaoService>();

            services.AddTransient<IRepositoryProduto, ProdutoRepository>();
            services.AddTransient<IRepositoryCenarioCompra, CenarioCompraRepository>();
            services.AddTransient<IRepositoryHistoricoCompra, HistoricoCompraRepository>();
            services.AddTransient<IRepositoryPessoa, PessoaRepository>();
            services.AddTransient<IRepositoryProdFornecedor, ProdFornecedorRepository>();
            services.AddTransient<IRepositoryCenarioCompraProduto, CenarioCompraProdutoRepository>();
            services.AddTransient<IRepositoryOperacao, OperacaoRepository>();
            services.AddTransient<IRepositoryProdutoOperacao, ProdutoOperacaoRepository>();

            //services.AddDbContext<GestaoComprasContext>(options => options.UseSqlServer(Configuration.GetConnectionString("ConexaoSqlServer")));
            services.AddDbContext<GestaoComprasContext>(options => options.UseMySQL(Configuration.GetConnectionString("ConexaoMySql")));
            services.AddControllers().AddNewtonsoftJson();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseCors(x => x
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader()
            );

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

        }
    }
}
