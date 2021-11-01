import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { HistoricoCompra } from '../models/entities/historico-compra';
import { environment } from '../../../environments/environment';

@Injectable()
export class HistoricoCompraService {

    constructor(private http: HttpClient) { }

    protected url: string = environment.urlBackEnd;

    getHistoricoCompra(	idProduto: number, produto: string, fornecedor: string, operacao: string, dtaIni: string, dtaFim: string): Observable<HistoricoCompra[]> {

        let params = new HttpParams();

        params = params.append('idProduto', idProduto.toString());
        params = params.append('produto', produto);
        params = params.append('fornecedor', fornecedor);
        params = params.append('operacao', operacao);
        params = params.append('dtaIni', dtaIni ? dtaIni : "");
        params = params.append('dtaFim', dtaFim ? dtaFim : "");

        return this.http.get<HistoricoCompra[]>(this.url + "historicocompra", { params: params });
    }
}