using GestaoCompras.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Interfaces
{
    public interface IRepositoryHistoricoCompra : IBaseRepository<HistoricoCompra>
    {
        public IEnumerable<HistoricoCompra> GetHistoricoCompra(int idProduto, string produto, string fornecedor, string operacao, DateTime? dtaIni, DateTime? dtaFim);
    }
}
