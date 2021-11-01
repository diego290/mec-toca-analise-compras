using Microsoft.AspNetCore.Mvc;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using GestaoCompras.Domain.DTOs;
using System.Collections.Generic;
using System;
using System.Threading;

namespace GestaoCompras.Api.Controllers
{
    [Route("api/[controller]")]
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class CenarioCompraController : ControllerBase
    {
        private readonly IServiceCenarioCompra _serviceCenarioCompra;

        public CenarioCompraController(IServiceCenarioCompra service) => _serviceCenarioCompra = service;

        // GET: api/CenarioCompra/TODOS
        [Route("~/api/CenarioCompra/{status}")]
        [HttpGet]
        public IActionResult GetCenarioCompra(string status)
        {
            return Ok(_serviceCenarioCompra.GetByStatus(status));
        }

        // GET: api/CenarioCompra/CenarioCompraProduto/5
        [Route("~/api/CenarioCompra/{idCenarioCompra}/Produtos")]
        [HttpGet]
        public IActionResult GetProdutosPorCenarioCompra(int idCenarioCompra)
        {
            return Ok(_serviceCenarioCompra.GetCenarioCompraProduto(idCenarioCompra));
        }

        // GET: api/CenarioCompra/FinalizarLote
        [Route("~/api/CenarioCompra/FinalizarLote")]
        [HttpPost]
        public IActionResult FinalizarLote([FromBody] IList<DTO_CenarioCompraProduto> ccp)
        {
            try
            {
                Thread.Sleep(4000);
                return Ok(_serviceCenarioCompra.FinalizarLote(ccp));
            }
            catch (Exception ex)
            {
                return Ok(new DTO_Retorno() { Erro = true, Mensagem = ex.Message });
            }
        }

    }
}
