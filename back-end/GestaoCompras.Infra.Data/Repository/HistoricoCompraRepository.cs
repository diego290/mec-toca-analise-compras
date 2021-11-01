using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using GestaoCompras.Infra.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GestaoCompras.Infra.Data.Repository
{
    public class HistoricoCompraRepository : BaseRepository<HistoricoCompra, int>, IRepositoryHistoricoCompra
    {
        public HistoricoCompraRepository(GestaoComprasContext context) : base(context) { }

        public void Remove(int id) => base.Delete(id);

        public void Save(HistoricoCompra obj)
        {
            if (obj.Id == 0)
                base.Insert(obj);
            else
                base.Update(obj);
        }

        public HistoricoCompra GetById(int id) => base.Select(id);

        public IList<HistoricoCompra> GetAll() => base.Select();

        public IEnumerable<HistoricoCompra> GetHistoricoCompra(int idProduto, string produto, string fornecedor, string operacao, DateTime? dtaIni, DateTime? dtaFim)
        {
            var retorno = base._GestaoComprasContext.HistoricoCompra.AsQueryable();

            if (idProduto > 0)
                retorno = retorno.Where(x => x.IdProduto == idProduto);

            if (!string.IsNullOrWhiteSpace(produto))
                retorno = retorno.Where(x => x.Produto.ToUpper().Contains(produto.ToUpper()));

            if (!string.IsNullOrWhiteSpace(fornecedor))
                retorno = retorno.Where(x => x.Fornecedor.ToUpper().Contains(fornecedor.ToUpper()));

            if (!string.IsNullOrWhiteSpace(operacao) && !"TODOS".Equals(operacao))
                retorno = retorno.Where(x => x.Operacao.ToUpper().Contains(operacao.ToUpper()));

            if (dtaIni != null)
                retorno = retorno.Where(x => x.DtaRecebido >= dtaIni);

            if (dtaFim != null)
                retorno = retorno.Where(x => x.DtaRecebido <=dtaFim);

            return retorno.ToList();
        }
    }
}
