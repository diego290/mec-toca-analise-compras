using GestaoCompras.Domain.Entities;
using GestaoCompras.Infra.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GestaoCompras.Infra.Data.Repository
{
    public class BaseRepository<T, B> where T : BaseEntity<B>
    {
        protected readonly GestaoComprasContext _GestaoComprasContext;

        public BaseRepository(GestaoComprasContext GestaoComprasContext)
        {
            _GestaoComprasContext = GestaoComprasContext;
        }

        protected virtual void Insert(T obj)
        {
            _GestaoComprasContext.Set<T>().Add(obj);
            _GestaoComprasContext.SaveChanges();
        }

        protected virtual void Update(T obj)
        {
            _GestaoComprasContext.Entry(obj).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            _GestaoComprasContext.SaveChanges();
        }

        protected virtual void Delete(int id)
        {
            _GestaoComprasContext.Set<T>().Remove(Select(id));
            _GestaoComprasContext.SaveChanges();
        }

        protected virtual IList<T> Select() =>
            _GestaoComprasContext.Set<T>().ToList();

        protected virtual T Select(int id) =>
            _GestaoComprasContext.Set<T>().Find(id);
    }
}
