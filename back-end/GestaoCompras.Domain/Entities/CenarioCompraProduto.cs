using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
	public class CenarioCompraProduto : BaseEntity<int>
	{
		public int ListaCompraConfigId { get; set; }
		public int IdProduto { get; set; }
		public string Descricao { get; set; }
		public string Embalagem { get; set; }
		public double MedVendMes { get; set; }
		public int EstoqueDisp { get; set; }
		public int PendReceb { get; set; }
		public int PendExped { get; set; }
		public int DiasEstoque { get; set; }
		public double CustoMedio { get; set; }
		public int QtdUltCompra { get; set; }
		public double CustoUltCompra { get; set; }
	}
}
