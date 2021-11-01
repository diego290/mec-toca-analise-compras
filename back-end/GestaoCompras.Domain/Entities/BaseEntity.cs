using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Entities
{
    public abstract class BaseEntity<T>
    {
        public virtual T Id { get; set; }
    }
}
