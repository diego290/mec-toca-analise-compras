using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
    public class Pessoa : BaseEntity<int>
    {
        public string NomeRazao { get; set; }
    }
}
