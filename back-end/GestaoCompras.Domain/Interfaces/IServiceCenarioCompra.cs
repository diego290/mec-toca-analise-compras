using GestaoCompras.Domain.DTOs;
using GestaoCompras.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace GestaoCompras.Domain.Interfaces
{
    public interface IServiceCenarioCompra : IBaseService<CenarioCompra>
    {
        IList<DTO_CenarioCompraProduto> GetCenarioCompraProduto(int idCenarioCompra);
        IList<CenarioCompra> GetByStatus(string status);
        DTO_Retorno FinalizarLote(IList<DTO_CenarioCompraProduto> ccp);
    }
}
