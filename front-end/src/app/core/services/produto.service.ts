import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { DTO_CompraVenda } from '../models/DTOs/DTO_compra-venda';
import {  } from '../models/DTOs/DTO_compra-venda';
import { environment } from '../../../environments/environment';

@Injectable()
export class ProdutoService {

    constructor(private http: HttpClient) { }

    protected url: string = environment.urlBackEnd;

    getCompraVenda(	idProduto: number, periodo:number): Observable<DTO_CompraVenda[]> {

        let params = new HttpParams();

        params = params.append('idProduto', idProduto.toString());
        params = params.append('periodo', periodo.toString());

        return this.http.get<DTO_CompraVenda[]>(this.url + "produto/compravenda", { params: params });
    }
}