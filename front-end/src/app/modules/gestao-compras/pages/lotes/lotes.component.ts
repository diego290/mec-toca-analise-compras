import { Component, QueryList, ViewChildren, OnInit } from '@angular/core';
import { DecimalPipe } from '@angular/common';

import { NgbdSortableHeader, SortEvent } from 'src/app/utils/directives/sortable.directive';
import { CenarioCompraService } from 'src/app/core/services/cenario-compra.service';
import { CenarioCompra } from 'src/app/core/models/entities/cenario-compra';
import { OrdenacaoService } from 'src/app/utils/services/ordenacao.service';

@Component({
  selector: 'app-lotes',
  templateUrl: './lotes.component.html',
  providers: [CenarioCompraService, DecimalPipe, OrdenacaoService],
  styleUrls: [ './lotes.component.css' ]
})
export class LotesComponent implements OnInit {

  @ViewChildren(NgbdSortableHeader) headers: QueryList<NgbdSortableHeader>;
  cenarioCompras: CenarioCompra[] = [];

  constructor(public service: CenarioCompraService, public oService: OrdenacaoService) { }

  ngOnInit(): void {
    this.service.getCenarioCompra("GERADOS")
      .subscribe(
        cenarioCompras => {
          this.cenarioCompras = cenarioCompras;
        },
        error => console.log(error)
      );
  }

  onChange(status: string) {
    this.service.getCenarioCompra(status)
      .subscribe(
        cenarioCompras => {
          this.cenarioCompras = cenarioCompras;
        },
        error => console.log(error)
      );
  }

  onSort({ column, direction }: SortEvent) {

    // resetting other headers
    this.headers.forEach(header => {
      if (header.sortable !== column) {
        header.direction = '';
      }
    });

    this.cenarioCompras = this.oService.sort(this.cenarioCompras, column, direction);
  }

}
