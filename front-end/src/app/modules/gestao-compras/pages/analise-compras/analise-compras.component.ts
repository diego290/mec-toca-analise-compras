import { Component, OnInit, ViewChildren, QueryList, ViewChild, ElementRef } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { DTOCenarioCompraProduto } from 'src/app/core/models/DTOs/DTO-cenario-compra-produto';
import { CenarioCompraService } from 'src/app/core/services/cenario-compra.service';
import { DecimalPipe } from '@angular/common';
import { NgbdSortableHeader, SortEvent } from 'src/app/utils/directives/sortable.directive';
import { OrdenacaoService } from 'src/app/utils/services/ordenacao.service';
import { Chart } from 'chart.js';
import { ProdutoService } from 'src/app/core/services/produto.service';
import { DTO_CompraVenda } from 'src/app/core/models/DTOs/DTO_compra-venda';
import { DatePipe } from '@angular/common';
import { NgbModalConfig, NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-analise-compras',
  templateUrl: './analise-compras.component.html',
  providers: [CenarioCompraService, DecimalPipe, OrdenacaoService, ProdutoService, DatePipe, NgbModalConfig, NgbModal],
  styleUrls: ['./analise-compras.component.css']
})
export class AnaliseComprasComponent implements OnInit {

  @ViewChildren(NgbdSortableHeader) headers: QueryList<NgbdSortableHeader>;
  @ViewChild("meuCanvas", { static: true }) elemento: ElementRef;

  idCenarioCompra;
  cenarioProdutos: DTOCenarioCompraProduto[] = [];
  comprasVendas: DTO_CompraVenda[] = [];
  descricaoCenario = "";
  dtaSugestao = "";
  chart: Chart;
  idProdSel: number;
  descProdSel: string;
  periodoSel: number;
  descricaoModal: string;
  public load: boolean = false;


  constructor(private route: ActivatedRoute, public service: CenarioCompraService, public oService: OrdenacaoService, public poService: ProdutoService,
    private datePipe: DatePipe, config: NgbModalConfig, private modalService: NgbModal) {
    config.backdrop = 'static';
    config.keyboard = false;
  }

  ngOnInit(): void {
    this.route.params.subscribe(params => this.idCenarioCompra = params['idCenarioCompra']);
    this.getCenarioCompraProduto(this.idCenarioCompra);
    this.periodoSel = 3;
  }

  getCenarioCompraProduto(idCenarioCompra: number) {
    this.service.getCenarioCompraProduto(idCenarioCompra)
      .subscribe(
        cenarioCompraProduto => {
          this.cenarioProdutos = cenarioCompraProduto;
          this.descricaoCenario = cenarioCompraProduto.length > 0 ? cenarioCompraProduto[0].CC.Descricao : "";
          this.dtaSugestao = cenarioCompraProduto.length > 0 ? this.datePipe.transform(cenarioCompraProduto[0].CC.DtaSugestao, "dd/MM/yyy hh:mm:ss") : "";
          if (cenarioCompraProduto.length > 0) {
            this.idProdSel = cenarioCompraProduto[0].Produto.Id;
            this.descProdSel = cenarioCompraProduto[0].Produto.Descricao
            this.getCompraVenda(3);
          }
        },
        error => console.log(error)
      );
  }

  getCompraVenda(periodo: number) {
    this.poService.getCompraVenda(this.idProdSel, periodo)
      .subscribe(
        cv => {
          this.comprasVendas = cv;
          let labels = this.comprasVendas.map((cv) => cv.MesAno);
          let compras = this.comprasVendas.map((cv) => cv.QtdCompra);
          let vendas = this.comprasVendas.map((cv) => cv.QtdVenda);

          this.gerarGrafico(labels, compras, vendas);
        },
        error => console.log(error)
      );
  }

  onChange(periodo) {
    this.periodoSel = periodo;
    this.poService.getCompraVenda(this.idProdSel, periodo)
      .subscribe(
        cv => {
          this.comprasVendas = cv;
          let labels = this.comprasVendas.map((cv) => cv.MesAno);
          let compras = this.comprasVendas.map((cv) => cv.QtdCompra);
          let vendas = this.comprasVendas.map((cv) => cv.QtdVenda);

          this.gerarGrafico(labels, compras, vendas);
        },
        error => console.log(error)
      );
  }

  setProdSel(cv: DTOCenarioCompraProduto) {

    if (cv.Produto.Id == this.idProdSel) {
      return;
    }

    this.idProdSel = cv.Produto.Id;
    this.descProdSel = cv.Produto.Descricao;
    this.getCompraVenda(3);
    var DropdownList = (document.getElementById("periodo")) as HTMLSelectElement;
    DropdownList.selectedIndex = 0;
    this.periodoSel = 3;
  }

  verificarQtdCompra(finalizado, alertaQtdCompra){
    if(this.cenarioProdutos.filter(x => x.QtdCompra == 0).length > 0){
      this.modalService.open(alertaQtdCompra);
    }else{
      this.finalizarLote(finalizado);
    }
  }

  abrirCompras(modal){
    this.modalService.open(modal,{ size: 'xl' });
  }

  finalizarLote(finalizado) {

    this.load = true;

    this.modalService.dismissAll();
    this.service.finalizarLote(this.cenarioProdutos)
      .subscribe(
        retorno => {
          if (!retorno.Erro) {
            this.descricaoModal = "Lote " + this.descricaoCenario + " finalizado com sucesso. Acesse o painel do Mobne para mais detalhes"
          } else {
            this.descricaoModal = "Erro ao finalizar lote " + this.descricaoCenario + "\n " + retorno.Mensagem
          }
          this.modalService.open(finalizado);
          this.load = false;
        },
        error => {
          this.descricaoModal = "Erro ao finalizar lote " + this.descricaoCenario + "\n " + error.Mensagem
          this.modalService.open(finalizado);
          this.load = false;
        }
      );
  }

  gerarGrafico(labels: string[], compras: number[], vendas: number[]) {

    this.chart = new Chart(this.elemento.nativeElement, {
      type: 'line',
      data: {
        labels: labels,
        datasets: [
          {
            data: compras,
            borderColor: '#FF0000',
            fill: false,
            label: 'Compras',
            lineTension: 0,  
          },
          {
            data: vendas,
            borderColor: "#0000FF",
            fill: false,
            label: 'Vendas',
            lineTension: 0,   
          }
        ]
      },
    });
  }

  onSort({ column, direction }: SortEvent) {
    // resetting other headers
    this.headers.forEach(header => {
      if (header.sortable !== column) {
        header.direction = '';
      }
    });

    this.cenarioProdutos = this.oService.sort(this.cenarioProdutos, column, direction);
  }


}
