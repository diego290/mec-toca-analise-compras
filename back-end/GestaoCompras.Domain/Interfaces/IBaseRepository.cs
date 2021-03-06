using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Interfaces
{
    public interface IBaseRepository<T>
    {
        void Save(T obj);

        void Remove(int id);

        T GetById(int id);

        IList<T> GetAll();
    }
}
