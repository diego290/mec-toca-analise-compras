import { Component, OnInit } from '@angular/core';
import { TabService } from '../../services/tab.service';
import { Router, NavigationEnd, NavigationStart, NavigationCancel, NavigationError } from '@angular/router';

@Component({
  selector: 'app-navegacao',
  templateUrl: './navegacao.component.html',
  styleUrls: ['./navegacao.component.css']
})

export class NavegacaoComponent implements OnInit {
  tabs = [];
  activeTabUrl: string;
  
  constructor(private tabService: TabService, private router: Router) {
    
   }

  ngOnInit() {

  }

  // ngOnInit() {
  //   this.tabs = this.tabService.tabs;

  //   this.router.events.subscribe(event => {
  //     if (event instanceof NavigationEnd) {
  //       this.activeTabUrl = event.urlAfterRedirects;
  //       if (this.tabs.length === 0) {
  //         this.tabService.addTab(this.activeTabUrl);
  //       }
  //     }

  //   });
  // }

  closeTab(index: number, event: Event) {
    this.tabService.deleteTab(index);
    event.preventDefault();
  }

  onTabChange(event) {
    this.router.navigateByUrl(event.nextId);
  }
}
