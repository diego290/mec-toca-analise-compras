import {Routes} from '@angular/router';
import { LotesComponent } from './modules/gestao-compras/pages/lotes/lotes.component';
import { AnaliseComprasComponent } from './modules/gestao-compras/pages/analise-compras/analise-compras.component';
import { HistoricoComprasComponent } from './modules/historico-compras/pages/historico-compras/historico-compras.component';
import { HomeComponent } from './modules/home/pages/home/home/home.component';

export const rootRouterConfig: Routes = [
    {path: '', redirectTo: '/home', pathMatch: 'full'},
    {path: 'lotes', component: LotesComponent},
    {path: 'historicocompras', component: HistoricoComprasComponent},
    {path: 'analisecompras', component: LotesComponent},
    {path: 'analisecompras/:idCenarioCompra', component: AnaliseComprasComponent},
    {path: 'home', component: HomeComponent},
]

