using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
    public class HistoricoCompra : BaseEntity<int>
    {
        public int IdEmpresa { get; set; }
        public string Empresa { get; set; }
        public DateTime DtaRecebido { get; set; }
        public int IdProduto { get; set; }
        public string Produto { get; set; }
        public int NroNF { get; set; }
        public string Operacao { get; set; }
        public string Fornecedor { get; set; }
        public int Qtd { get; set; }
        public string Embalagem { get; set; }
        public double VlrEmbalagem { get; set; }
        public double VlrBruto { get; set; }
        public double VlrBrutoEmbalagem { get; set; }
        public double Total { get; set; }
    }
}
