using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.DTOs
{
    public class DTO_CompraVenda
    {
        public string MesAno { get; set; }
        public int QtdCompra { get; set; }
        public int QtdVenda { get; set; }
        public double VlrCompra { get; set; }
        public double VlrVenda { get; set; }
    }
}
