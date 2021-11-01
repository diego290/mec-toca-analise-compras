import { Injectable } from '@angular/core';
import { ITab } from '../models/interfaces/tab.model';

@Injectable({
  providedIn: 'root'
})
export class TabService {
  tabs: ITab[] = [];
  tabOptions: ITab[] = [{ name: 'Lote Compras', url: '/lotes' },
                        { name: 'Histórico Compras',   url: '/historicocompras' },
                       ];
 
  constructor() {}

  addTab(url: string) {
    const tab = this.getTabOptionByUrl(url);
    if (!this.tabs.includes(tab)) {
      this.tabs.push(tab);
    }
  }
   
  getTabOptionByUrl(url: string): ITab {
    return this.tabOptions.find(tab => tab.url === url);
  }
   
  deleteTab(index: number) {
    this.tabs.splice(index, 1);
  }
}
