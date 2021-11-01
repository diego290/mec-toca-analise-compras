using GestaoCompras.Domain.DTOs;
using GestaoCompras.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;
                    
namespace GestaoCompras.Domain.Interfaces
{
    public interface IRepositoryCenarioCompra : IBaseRepository<CenarioCompra>
    {
        IList<DTO_CenarioCompraProduto> GetCenarioCompraProduto(int listaCompraConfigId);
        IList<CenarioCompra> GetByStatus(string status);
        DTO_Retorno FinalizarLote(IList<DTO_CenarioCompraProduto> ccp);
    }
}
