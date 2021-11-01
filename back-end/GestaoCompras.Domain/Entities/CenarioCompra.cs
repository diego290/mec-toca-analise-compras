using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
    public class CenarioCompra : BaseEntity<int>
    {
        public int ListaCompraConfigId { get; set; }
        public string Descricao { get; set; }
        public DateTime DtaSugestao { get; set; }
        public DateTime? DtaFinalizacao { get; set; }
    }
}
