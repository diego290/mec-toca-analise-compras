using Microsoft.AspNetCore.Mvc;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using System;

namespace GestaoCompras.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProdutoController : ControllerBase
    {
        private readonly IServiceProduto _serviceProduto;
        private readonly IServiceProdutoOperacao _serviceProdutoOperacao;

        public ProdutoController(IServiceProduto serviceP, IServiceProdutoOperacao servicePO)
        {
            _serviceProduto = serviceP;
            _serviceProdutoOperacao = servicePO;
        }


        // GET: api/Produto
        [HttpGet]
        public IActionResult GetProduto()
        {
            return Ok(_serviceProduto.GetAll());
        }

        // GET: api/Produto/5
        [HttpGet("{id}")]
        public ActionResult GetProduto(int id)
        {
            var produto = _serviceProduto.GetById(id);

            if (produto == null)
                return NotFound();

            return Ok(produto);
        }

        // PUT: api/Produto/5
        [HttpPut("{id}")]
        public IActionResult PutProduto(Produto produto)
        {
            if (produto == null)
                return BadRequest();

            produto = _serviceProduto.Update(produto);

            return Ok(produto);
        }

        // POST: api/Produto
        [HttpPost]
        public IActionResult PostProduto(Produto produto)
        {
            if (produto == null)
                return BadRequest();

            produto = _serviceProduto.Insert(produto);

            return Ok(produto);
        }

        // DELETE: api/Produto/5
        [HttpDelete("{id}")]
        public IActionResult DeleteProduto(int id)
        {
            _serviceProduto.Delete(id);

            return NoContent();
        }

        // GET: api/Produto/ProdutoOperacao
        [Route("~/api/Produto/CompraVenda")]
        [HttpGet]
        public IActionResult GetCompraVenda(int idProduto, int periodo)
        {
            return Ok(_serviceProdutoOperacao.GetCompraVenda(idProduto, periodo));
        }

    }
}
