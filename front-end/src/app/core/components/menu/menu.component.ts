import { Component, OnInit } from '@angular/core';
import { TabService } from '../../services/tab.service';
import { Router } from '@angular/router';
import { ITab } from '../../models/interfaces/tab.model';
 


@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {
  menuOptions: ITab[] = [];
  constructor(private tabService: TabService, private router: Router) {}
 
  ngOnInit() {
    this.menuOptions = this.tabService.tabOptions;
  }

  openTab(url: string) {
    this.tabService.addTab(url);
    this.router.navigateByUrl(url);
  }

}
