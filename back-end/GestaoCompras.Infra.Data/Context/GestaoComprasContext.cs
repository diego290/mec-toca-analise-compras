using GestaoCompras.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace GestaoCompras.Infra.Data.Context
{
    public class GestaoComprasContext : DbContext
    {
        public GestaoComprasContext(DbContextOptions<GestaoComprasContext> options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder) {}

        public DbSet<Produto> Produto { get; set; }
        public DbSet<CenarioCompra> CenarioCompra { get; set; }
        public DbSet<HistoricoCompra> HistoricoCompra { get; set; }
        public DbSet<Pessoa> Pessoa { get; set; }
        public DbSet<ProdFornecedor> ProdFornecedor { get; set; }
        public DbSet<CenarioCompraProduto> CenarioCompraProduto { get; set; }
        public DbSet<Operacao> Operacao { get; set; }
        public DbSet<ProdutoOperacao> ProdutoOperacao { get; set; }
    }
}
