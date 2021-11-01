using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
    public class Operacao : BaseEntity<int>
    {
        public string Descricao { get; set; }
    }
}
