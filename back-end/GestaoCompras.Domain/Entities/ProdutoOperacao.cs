using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
	public class ProdutoOperacao : BaseEntity<int>
	{
		public int ProdutoId { get; set; }
		public int OperacaoId { get; set; }
		public int Quantidade { get; set; }
		public double Valor { get; set; }
		public DateTime DataHoraOperacao { get; set; }
	}
}
