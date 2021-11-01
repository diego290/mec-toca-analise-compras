using GestaoCompras.Domain.DTOs;
using GestaoCompras.Domain.Entities;
using GestaoCompras.Domain.Enums;
using GestaoCompras.Domain.Interfaces;
using GestaoCompras.Infra.CrossCutting.Util;
using GestaoCompras.Infra.Data.Context;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;

namespace GestaoCompras.Infra.Data.Repository
{
    public class ProdutoOperacaoRepository : BaseRepository<ProdutoOperacao, int>, IRepositoryProdutoOperacao
    {
        public ProdutoOperacaoRepository(GestaoComprasContext context) : base(context) { }

        public void Remove(int id) => base.Delete(id);

        public void Save(ProdutoOperacao obj)
        {
            if (obj.Id == 0)
                base.Insert(obj);
            else
                base.Update(obj);
        }

        public ProdutoOperacao GetById(int id) => base.Select(id);

        public IList<ProdutoOperacao> GetAll() => base.Select();

        public IList<DTO_CompraVenda> GetCompraVenda(int idProduto, int periodo)
        {
            using (var gc = _GestaoComprasContext)
            {
                var consulta = gc.ProdutoOperacao.AsQueryable();

                if (idProduto > 0)
                    consulta = consulta.Where(x => x.ProdutoId == idProduto);

                if (periodo <= 0)
                    return new List<DTO_CompraVenda>();

                var retorno = new List<DTO_CompraVenda>();

                if (periodo <= 12)
                {
                    DateTime aux = DateTime.Now.Date.AddMonths(-periodo + 1);
                    string data = $"01/{aux.Month.ToString().PadLeft(2, '0')}/{aux.Year}";
                    DateTime dtaIni = DateTime.ParseExact(data, "dd/MM/yyyy", CultureInfo.InvariantCulture);

                    consulta = consulta.Where(x => x.DataHoraOperacao.Date >= dtaIni);
                    var produtoOperacao = consulta.ToList();

                    for (int count = 0; count < periodo; count++)
                    {
                        int nroMes = dtaIni.AddMonths(count).Month;

                        var cv = new DTO_CompraVenda();
                        Mes mes = (Mes)nroMes;
                        cv.MesAno = Util_Enum.GetDescription(mes);
                        cv.QtdCompra = produtoOperacao.Where(x => x.DataHoraOperacao.Month == nroMes && x.OperacaoId == 1).Sum(x => x.Quantidade);
                        cv.VlrCompra = produtoOperacao.Where(x => x.DataHoraOperacao.Month == nroMes && x.OperacaoId == 1).Select(x => x.Quantidade * x.Valor).Sum();
                        cv.QtdVenda = produtoOperacao.Where(x => x.DataHoraOperacao.Month == nroMes && x.OperacaoId == 2).Sum(x => x.Quantidade);
                        cv.VlrVenda = produtoOperacao.Where(x => x.DataHoraOperacao.Month == nroMes && x.OperacaoId == 2).Select(x => x.Quantidade * x.Valor).Sum();
                        retorno.Add(cv);
                    }
                }
                else
                {
                    int qtdAnos = periodo / 12;
                    string data = $"01/01/{DateTime.Now.Date.Year - qtdAnos + 1}";
                    DateTime dtaIni = DateTime.ParseExact(data, "dd/MM/yyyy", CultureInfo.InvariantCulture);

                    consulta = consulta.Where(x => x.DataHoraOperacao.Date >= dtaIni);
                    var produtoOperacao = consulta.ToList();

                    for (int nroAno = DateTime.Now.Year - qtdAnos + 1; nroAno <= DateTime.Now.Year; nroAno++)
                    {
                        var cv = new DTO_CompraVenda();
                        cv.MesAno = nroAno.ToString();
                        cv.QtdCompra = produtoOperacao.Where(x => x.DataHoraOperacao.Year == nroAno && x.OperacaoId == 1).Sum(x => x.Quantidade);
                        cv.VlrCompra = produtoOperacao.Where(x => x.DataHoraOperacao.Year == nroAno && x.OperacaoId == 1).Select(x => x.Quantidade * x.Valor).Sum();
                        cv.QtdVenda = produtoOperacao.Where(x => x.DataHoraOperacao.Year == nroAno && x.OperacaoId == 2).Sum(x => x.Quantidade);
                        cv.VlrVenda = produtoOperacao.Where(x => x.DataHoraOperacao.Year == nroAno && x.OperacaoId == 2).Select(x => x.Quantidade * x.Valor).Sum();
                        retorno.Add(cv);
                    }
                }

                return retorno;
            }
        }

    }
}
