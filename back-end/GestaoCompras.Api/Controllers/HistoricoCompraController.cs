using Microsoft.AspNetCore.Mvc;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using System;

namespace GestaoCompras.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HistoricoCompraController : ControllerBase
    {
        private readonly IServiceHistoricoCompra _serviceHistorico;

        public HistoricoCompraController(IServiceHistoricoCompra service) => _serviceHistorico = service;

        // GET: api/HistoricoCompra
        [HttpGet]
        public IActionResult GetHistoricoCompra(int idProduto, string produto, string fornecedor, string operacao, string dtaIni, string dtaFim)
        {
            return Ok(_serviceHistorico.GetHistoricoCompra(idProduto, produto, fornecedor, operacao, dtaIni, dtaFim));
        }        

    }
}
