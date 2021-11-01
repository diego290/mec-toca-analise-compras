using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using GestaoCompras.Infra.Data.Context;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Infra.Data.Repository
{
    public class ProdFornecedorRepository : BaseRepository<ProdFornecedor, int>, IRepositoryProdFornecedor
    {
        public ProdFornecedorRepository(GestaoComprasContext context) : base(context) { }

        public void Remove(int id) => base.Delete(id);

        public void Save(ProdFornecedor obj)
        {
            if (obj.Id == 0)
                base.Insert(obj);
            else
                base.Update(obj);
        }

        public ProdFornecedor GetById(int id) => base.Select(id);

        public IList<ProdFornecedor> GetAll() => base.Select();

    }
}
