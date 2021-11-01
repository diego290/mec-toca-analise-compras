using GestaoCompras.Domain.DTOs;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Services.Services
{
    public class CenarioCompraService : IServiceCenarioCompra
    {
        private readonly IRepositoryCenarioCompra _repository;

        public CenarioCompraService(IRepositoryCenarioCompra repository) =>  _repository = repository;

        public void Delete(int id) => _repository.Remove(id);

        public IList<CenarioCompra> GetAll() => _repository.GetAll();

        public CenarioCompra GetById(int id) => _repository.GetById(id);

        public CenarioCompra Insert(CenarioCompra obj)
        {
            _repository.Save(obj);
            return obj;
        }

        public CenarioCompra Update(CenarioCompra obj)
        {
            _repository.Save(obj);
            return obj;
        }

        public IList<DTO_CenarioCompraProduto> GetCenarioCompraProduto(int idCenarioCompra)
        {
            return _repository.GetCenarioCompraProduto(idCenarioCompra);
        }

        public IList<CenarioCompra> GetByStatus(string status)
        {
            return _repository.GetByStatus(status);
        }

        public DTO_Retorno FinalizarLote(IList<DTO_CenarioCompraProduto> ccp)
        {
            return _repository.FinalizarLote(ccp);
        }

        public IList<CenarioCompra> GetByStatus(string status)
        {
            return _repository.GetByStatus(status);
        }

        public DTO_Retorno FinalizarLote(IList<DTO_CenarioCompraProduto> ccp)
        {
            return _repository.FinalizarLote(ccp);
        }
    }
}
