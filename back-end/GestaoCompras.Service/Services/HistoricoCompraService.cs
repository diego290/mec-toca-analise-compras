using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Services.Services
{
    public class HistoricoCompraService : IServiceHistoricoCompra
    {
        private readonly IRepositoryHistoricoCompra _repository;

        public HistoricoCompraService(IRepositoryHistoricoCompra repository) =>  _repository = repository;

        public void Delete(int id) => _repository.Remove(id);

        public IList<HistoricoCompra> GetAll() => _repository.GetAll();

        public HistoricoCompra GetById(int id) => _repository.GetById(id);

        public HistoricoCompra Insert(HistoricoCompra obj)
        {
            _repository.Save(obj);
            return obj;
        }

        public HistoricoCompra Update(HistoricoCompra obj)
        {
            _repository.Save(obj);
            return obj;
        }

        public IEnumerable<HistoricoCompra> GetHistoricoCompra(int idProduto, string produto, string fornecedor, string operacao, string dtaIni, string dtaFim)
        {
            DateTime? dtaInicio = string.IsNullOrWhiteSpace(dtaIni) ? (DateTime?)null : Convert.ToDateTime(dtaIni);
            DateTime? dtaFinal = string.IsNullOrWhiteSpace(dtaIni) ? (DateTime?)null : Convert.ToDateTime(dtaFim);
            return _repository.GetHistoricoCompra(idProduto, produto, fornecedor, operacao, dtaInicio, dtaFinal);
        }
    }
}
