import {Component, HostListener, OnInit} from '@angular/core';
import {ThemeOptions} from '../../../theme-options';
import {select} from '@angular-redux/store';
import {Observable} from 'rxjs';
import {ActivatedRoute} from '@angular/router';
import {SectionService} from '../../../DemoPages/Services/SectionService/section.service';
import {SectionInputBean} from '../../../DemoPages/MessageBeans/SectionBeans/section-input-bean';
import {PageUserRoleService} from '../../../DemoPages/Services/PageUserRoleService/page-user-role.service';
import {PageUserRoleInputBean} from '../../../DemoPages/MessageBeans/PageUserRoleBeans/page-user-role-input-bean';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
})
export class SidebarComponent implements OnInit {
  public extraParameter: any;

  constructor(private pageUserRole: PageUserRoleService, private secrtionservice: SectionService, public globals: ThemeOptions, private activatedRoute: ActivatedRoute) {

  }

  @select('config') public config$: Observable<any>;

  private newInnerWidth: number;
  private innerWidth: number;
  activeId = 'dashboardsMenu';
  private  sectionInputBeans: SectionInputBean[];
  private pageUserRoleinputbeans: PageUserRoleInputBean[];

  toggleSidebar() {
    this.globals.toggleSidebar = !this.globals.toggleSidebar;
  }

  sidebarHover() {
    this.globals.sidebarHover = !this.globals.sidebarHover;
  }

  ngOnInit() {
    setTimeout(() => {
      this.innerWidth = window.innerWidth;
      if (this.innerWidth < 1200) {
        this.globals.toggleSidebar = true;
      }
    });

    this.extraParameter = this.activatedRoute.snapshot.firstChild.data.extraParameter;
    this.getAllSection();
  }

  @HostListener('window:resize', ['$event'])
  onResize(event) {
    this.newInnerWidth = event.target.innerWidth;

    if (this.newInnerWidth < 1200) {
      this.globals.toggleSidebar = true;
    } else {
      this.globals.toggleSidebar = false;
    }

  }
// ################# Load All Page Sections #######################
  getAllSection() {
    console.log('sadarada');
    this.secrtionservice.getAllSections()
        .subscribe(data => {
          // this.deviceList = data;
          // this.collectionSize = this.deviceList.length;
          // console.log(data);
          if (data == null) {
            console.log('No Sections ');
          } else {
            console.log(data);
            this.sectionInputBeans = data;
            console.log(' Relevant Sections are loaded ');
          }
        });
  }

  // ####################### Load pages according to User role and page section #################
  getPagesFromUserRoleAndSection(section: string) {
    this.pageUserRole.getPagesbyUserRoleAndSection(section)
        .subscribe( data => {
          if(data == null){
            console.log("No Pages");
            this.pageUserRoleinputbeans = null;
          }else{
            console.log("data Loaded");
            console.log(data);
            this.pageUserRoleinputbeans = data;
          }
        });
  }
}
