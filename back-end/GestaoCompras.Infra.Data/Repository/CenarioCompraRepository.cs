using GestaoCompras.Domain.DTOs;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Interfaces;
using GestaoCompras.Infra.Data.Context;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore;
using System;

namespace GestaoCompras.Infra.Data.Repository
{
    public class CenarioCompraRepository : BaseRepository<CenarioCompra, int>, IRepositoryCenarioCompra
    {
        public CenarioCompraRepository(GestaoComprasContext context) : base(context) { }

        public void Remove(int id) => base.Delete(id);

        public void Save(CenarioCompra obj)
        {
            if (obj.Id == 0)
                base.Insert(obj);
            else
                base.Update(obj);
        }

        public CenarioCompra GetById(int id) => base.Select(id);

        public IList<CenarioCompra> GetAll() => base.Select();

        public IList<DTO_CenarioCompraProduto> GetCenarioCompraProduto(int idCenarioCompra)
        {
            using (var gc = _GestaoComprasContext)
            {
                var consulta = (
                                from cc in gc.CenarioCompra
                                join cp in gc.CenarioCompraProduto on cc.Id equals cp.ListaCompraConfigId
                                join p in gc.Produto on cp.IdProduto equals p.Id
                                where cc.Id == idCenarioCompra
                                select new DTO_CenarioCompraProduto
                                {
                                    CC = cc,
                                    Produto = p,
                                    Embalagem = cp.Embalagem,
                                    MedVendMes = cp.MedVendMes,
                                    EstoqueDisp = cp.EstoqueDisp,
                                    PendReceb = cp.PendReceb,
                                    PendExped = cp.PendExped,
                                    DiasEstoque = cp.DiasEstoque,
                                    CustoMedio = cp.CustoMedio,
                                    QtdUltCompra = cp.QtdUltCompra,
                                    CustoUltCompra = cp.CustoUltCompra
                                }
                               ).ToList();


                foreach (var item in consulta)
                {
                    item.Fornecedores = (
                                         from pf in gc.ProdFornecedor
                                         join f in gc.Pessoa on pf.PessoaId equals f.Id
                                         where pf.ProdutoId == item.Produto.Id
                                         select f
                                        ).ToList();
                }

                return consulta.ToList();
            }
        }

        public IList<CenarioCompra> GetByStatus(string status)
        {
            using (var gc = _GestaoComprasContext)
            {
                var retorno = gc.CenarioCompra.AsQueryable();

                if (!string.IsNullOrWhiteSpace(status))
                {

                    switch (status)
                    {
                        case "GERADOS":
                            retorno = retorno.Where(x => x.DtaFinalizacao == null);
                            break;
                        case "FINALIZADOS":
                            retorno = retorno.Where(x => x.DtaFinalizacao != null);
                            break;
                    }
                }

                return retorno.ToList();
            }
        }

        public DTO_Retorno FinalizarLote(IList<DTO_CenarioCompraProduto> ccp)
        {
            using (var gc = _GestaoComprasContext)
            {
                if (ccp == null || ccp.Count == 0)
                    return new DTO_Retorno() {Erro = true, Mensagem = "Lote Vazio" };

                var cc = ccp.FirstOrDefault().CC;
                cc = gc.CenarioCompra.FirstOrDefault(x => x.Id == cc.Id);
                cc.DtaFinalizacao = DateTime.Now;

                gc.CenarioCompra.Update(cc);
                gc.SaveChanges();

                return new DTO_Retorno() { Erro = false, Mensagem = "" };
            }
        }
    }
}
