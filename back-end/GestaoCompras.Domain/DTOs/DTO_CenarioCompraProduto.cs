using GestaoCompras.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.DTOs
{
    public class DTO_CenarioCompraProduto
    {
        public DTO_CenarioCompraProduto()
        {
            Fornecedores = new List<Pessoa>();
        }

        public CenarioCompra CC { get; set; }
        public Produto Produto { get; set; }
        public string Embalagem { get; set; }
        public double MedVendMes { get; set; }
        public int EstoqueDisp { get; set; }
        public int PendReceb { get; set; }
        public int PendExped { get; set; }
        public int DiasEstoque { get; set; }
        public double CustoMedio { get; set; }
        public int QtdUltCompra { get; set; }
        public double CustoUltCompra { get; set; }
        public int QtdCompra { get; set; }
        public double VlrEmbalagem { get; set; }
        public double VlrDesc { get; set; }
        public double VlrAcrec { get; set; }
        public double VlrTotal { get; set; }
        public List<Pessoa> Fornecedores { get; set; }
    }
}
