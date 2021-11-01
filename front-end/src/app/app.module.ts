import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule } from "@angular/router";
import { APP_BASE_HREF, HashLocationStrategy, LocationStrategy } from "@angular/common";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { HttpClientModule } from "@angular/common/http";

import { registerLocaleData } from "@angular/common";
import localePt from "@angular/common/locales/pt";
registerLocaleData(localePt);

import { AppComponent } from './app.component';
import { rootRouterConfig } from './app.routes';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { NgbdSortableHeader } from './utils/directives/sortable.directive';

import { MenuComponent } from './core/components/menu/menu.component';
import { CabecalhoComponent } from './core/components/cabecalho/cabecalho.component';
import { NavegacaoComponent } from './core/components/navegacao/navegacao.component';
import { AnaliseComprasComponent } from './modules/gestao-compras/pages/analise-compras/analise-compras.component';
import { LotesComponent } from './modules/gestao-compras/pages/lotes/lotes.component';
import { HistoricoComprasComponent } from './modules/historico-compras/pages/historico-compras/historico-compras.component';
import { NgxBootstrapIconsModule, allIcons } from 'ngx-bootstrap-icons';
import { HomeComponent } from './modules/home/pages/home/home/home.component';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    CabecalhoComponent,
    NavegacaoComponent,
    LotesComponent,
    AnaliseComprasComponent,
    HistoricoComprasComponent,
    NgbdSortableHeader,
    HomeComponent
  ],
  imports: [
    BrowserModule, 
    FormsModule,
    HttpClientModule,
    NgbModule,
    ReactiveFormsModule,
    NgxBootstrapIconsModule.pick(allIcons),
    [RouterModule.forRoot(rootRouterConfig, {useHash: false})],
  ],
  providers: [
    {provide: APP_BASE_HREF, useValue: '/'},
    //{provide: LocationStrategy, useClass: HashLocationStrategy }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
