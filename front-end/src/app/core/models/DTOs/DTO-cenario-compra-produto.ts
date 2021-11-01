import { CenarioCompra } from '../entities/cenario-compra'
import { Produto } from '../entities/produto';
import { Pessoa } from '../entities/pessoa';

export class DTOCenarioCompraProduto {
    CC: CenarioCompra;
    Produto: Produto;
    Embalagem: string;
    MedVendMes: number;
    EstoqueDisp: number;
    PendReceb: number;
    PendExped: number;
    DiasEstoque: number;
    CustoMedio: number;
    QtdUltCompra: number;
    CustoUltCompra: number;
    QtdCompra: number;
    VlrEmbalagem: number;
    VlrDesc: number;
    VlrAcrec: number;
    VlrTotal:number;
    Fornecedores: Pessoa[];
}