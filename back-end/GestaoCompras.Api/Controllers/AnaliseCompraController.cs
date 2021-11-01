using Microsoft.AspNetCore.Mvc;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using GestaoCompras.Domain.DTOs;
using System.Collections.Generic;
using System.Linq;

namespace GestaoCompras.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AnaliseCompraController : ControllerBase
    {
        // GET: api/CenarioCompra/{listaCompraConfigId}
        [HttpGet("{listaCompraConfigId}")]
        public IActionResult GeAnaliseCompra(int listaCompraConfigId)
        {
            //var ccp = new List<DTO_CenarioCompraProduto>() 
            //{ 
            //    new DTO_CenarioCompraProduto(){ListaCompraConfigId = 2, IdProduto = 45, Descricao = "Lápis", Embalagem = "1 UN", MedVendMes = 9.66, EstoqueDisp = 4, PendReceb = 0, PendExped = 0, DiasEstoque = 13, CustoMedio = 3.98, QtdUltCompra = 20, CustoUltCompra = 4.1},
            //    new DTO_CenarioCompraProduto(){ListaCompraConfigId = 2, IdProduto = 122, Descricao = "Borracha", Embalagem = "6 FD", MedVendMes = 1.49, EstoqueDisp = 5, PendReceb = 0, PendExped = 56, DiasEstoque = 4, CustoMedio = 0.25, QtdUltCompra = 45, CustoUltCompra = 4.56},
            //    new DTO_CenarioCompraProduto(){ListaCompraConfigId = 2, IdProduto = 324, Descricao = "Caneta Bic", Embalagem = "24 CX", MedVendMes = 0.90, EstoqueDisp = 9, PendReceb = 45, PendExped = 0, DiasEstoque = 65, CustoMedio = 4.98, QtdUltCompra = 30, CustoUltCompra = 4.45},
            //    new DTO_CenarioCompraProduto(){ListaCompraConfigId = 2, IdProduto = 645, Descricao = "Agenda", Embalagem = "1 UN", MedVendMes = 15.9, EstoqueDisp = 12, PendReceb = 0, PendExped = 0, DiasEstoque = 89, CustoMedio = 8.75, QtdUltCompra = 45, CustoUltCompra = 8.65},
            //    new DTO_CenarioCompraProduto(){ListaCompraConfigId = 2, IdProduto = 7897, Descricao = "Papel A4", Embalagem = "1 UN", MedVendMes = 10.9, EstoqueDisp = 20, PendReceb = 0, PendExped = 0, DiasEstoque = 78, CustoMedio = 4.65, QtdUltCompra = 12, CustoUltCompra = 3.89},
            //    new DTO_CenarioCompraProduto(){ListaCompraConfigId = 3, IdProduto = 645, Descricao = "Grafite 0.7", Embalagem = "1 UN", MedVendMes = 9.85, EstoqueDisp = 12, PendReceb = 87, PendExped = 98, DiasEstoque = 549, CustoMedio = 56.75, QtdUltCompra = 89, CustoUltCompra = 45.20},
            //    new DTO_CenarioCompraProduto(){ListaCompraConfigId = 3, IdProduto = 7897, Descricao = "Caderno", Embalagem = "1 CX", MedVendMes = 20.87, EstoqueDisp = 87, PendReceb = 0, PendExped = 50, DiasEstoque = 56, CustoMedio = 78.45, QtdUltCompra = 45, CustoUltCompra = 45.89},
            //};

            //var retorno = ccp.Where(x => x.ListaCompraConfigId == listaCompraConfigId).ToList();

            //return Ok(retorno);
            return null;

        }
    }
}

