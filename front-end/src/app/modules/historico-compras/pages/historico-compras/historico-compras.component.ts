import { Component, OnInit, ViewChildren, QueryList } from '@angular/core';
import { HistoricoCompra } from 'src/app/core/models/entities/historico-compra';
import { NgbdSortableHeader, SortEvent } from 'src/app/utils/directives/sortable.directive';
import { OrdenacaoService } from 'src/app/utils/services/ordenacao.service';
import { HistoricoCompraService } from 'src/app/core/services/historico-compra.service';
import { DecimalPipe } from '@angular/common';
import { ActivatedRoute } from '@angular/router';
import { DatePipe } from '@angular/common';
import * as moment from 'moment'; 

@Component({
	selector: 'app-historico-compras',
	templateUrl: './historico-compras.component.html',
	providers: [OrdenacaoService, HistoricoCompraService, DecimalPipe, DatePipe],
	styleUrls: ['./historico-compras.component.css']
})

export class HistoricoComprasComponent implements OnInit {

	historicoCompras: HistoricoCompra[];
	idProduto: number;
	produto: string;
	fornecedor: string;
	operacao: string;
	dtaIni: string;
	dtaFim: string;

	@ViewChildren(NgbdSortableHeader) headers: QueryList<NgbdSortableHeader>;

	constructor(public hcService: HistoricoCompraService, public oService: OrdenacaoService, private route: ActivatedRoute, private datePipe: DatePipe) { }

	ngOnInit(): void {
		this.route.params.subscribe(params => {
			this.idProduto = params['idProdSel'];
			this.produto = params['descProdSel'];
			let periodo = params['periodoSel'];

			if (this.idProduto && this.produto && periodo) {
				let hoje = moment();
				this.dtaFim = hoje.format("YYYY-MM-DD");
				let aux = moment(`${hoje.year()}-${hoje.month()+1}-01`);
				aux = aux.subtract(periodo,"M");
				this.dtaIni = aux.format("YYYY-MM-DD");;
				this.pesquisar();				
			}
		},
			error => console.log(error)
		);
	}

	pesquisar() {

		let idProduto = this.idProduto ? this.idProduto : 0;
		let produto = this.produto ? this.produto : "";
		let fornecedor = this.fornecedor ? this.fornecedor : "";
		let operacao = this.operacao ? this.operacao : "";

		this.hcService.getHistoricoCompra(idProduto, produto, fornecedor, operacao, this.dtaIni, this.dtaFim)
			.subscribe(
				historicoCompras => {
					this.historicoCompras = historicoCompras;
				},
				error => console.log(error)
			);
	}

	onChange(operacao) {
		this.operacao = operacao;
	}

	onSort({ column, direction }: SortEvent) {

		// resetting other headers
		this.headers.forEach(header => {
			if (header.sortable !== column) {
				header.direction = '';
			}
		});

		this.historicoCompras = this.oService.sort(this.historicoCompras, column, direction);
	}

}
