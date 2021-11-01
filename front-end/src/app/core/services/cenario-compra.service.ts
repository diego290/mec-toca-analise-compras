import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CenarioCompra } from '../models/entities/cenario-compra';
import { Observable } from 'rxjs';
import { DTOCenarioCompraProduto } from '../models/DTOs/DTO-cenario-compra-produto';
import { environment } from '../../../environments/environment';


@Injectable()
export class CenarioCompraService {

    constructor(private http: HttpClient) { }

    protected url: string = environment.urlBackEnd + "cenariocompra/";

    getCenarioCompra(status): Observable<CenarioCompra[]> {
        return this.http.get<CenarioCompra[]>(this.url + status);
    }

    getCenarioCompraProduto(idCenarioCompra: number): Observable<DTOCenarioCompraProduto[]> {
        return this.http.get<DTOCenarioCompraProduto[]>(this.url + idCenarioCompra + "/Produtos");
    }

    finalizarLote(ccp: DTOCenarioCompraProduto[]): Observable<any> {
        return this.http.post(this.url + "finalizarlote", ccp);
    }
}