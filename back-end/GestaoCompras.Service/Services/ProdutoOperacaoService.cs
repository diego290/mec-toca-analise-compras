using GestaoCompras.Domain.DTOs;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Services.Services
{
    public class ProdutoOperacaoService : IServiceProdutoOperacao
    {
        private readonly IRepositoryProdutoOperacao _repository;

        public ProdutoOperacaoService(IRepositoryProdutoOperacao repository) =>  _repository = repository;

        public void Delete(int id) => _repository.Remove(id);

        public IList<ProdutoOperacao> GetAll() => _repository.GetAll();

        public ProdutoOperacao GetById(int id) => _repository.GetById(id);
        public ProdutoOperacao Insert(ProdutoOperacao obj)
        {
            _repository.Save(obj);
            return obj;
        }

        public ProdutoOperacao Update(ProdutoOperacao obj)
        {
            _repository.Save(obj);
            return obj;
        }
        public IList<DTO_CompraVenda> GetCompraVenda(int idProduto, int periodo)
        {
            return _repository.GetCompraVenda(idProduto, periodo);
        }

    }
}
