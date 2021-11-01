using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
    public class ProdFornecedor : BaseEntity<int>
    {
		public int ProdutoId { get; set; }
		public int PessoaId { get; set; }
		public double PadraoEmbCompra { get; set; }
		public string IndFornecPrincipal { get; set; }
	}
}
