using GestaoCompras.Domain.DTOs;
using GestaoCompras.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Interfaces
{
    public interface IServiceProdutoOperacao : IBaseService<ProdutoOperacao>
    {
        IList<DTO_CompraVenda> GetCompraVenda(int idProduto, int periodo);
    }
}
