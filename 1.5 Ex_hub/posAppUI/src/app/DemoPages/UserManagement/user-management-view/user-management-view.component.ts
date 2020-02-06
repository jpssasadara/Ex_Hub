import { Component, OnInit } from '@angular/core';
import {AuthSupService} from '../../Services/Authentication_Authorization_Support_Service/auth-sup.service';

@Component({
  selector: 'app-user-management-view',
  templateUrl: './user-management-view.component.html',
  styleUrls: ['./user-management-view.component.sass']
})
export class UserManagementViewComponent implements OnInit {
  constructor(public authsupservice: AuthSupService) {
  }

  // $$$$ permission List $$$
  AddButtonShowPermission;
  SearchButtonPermission;
  // $$$$$$$$$$$$$$$$$$$$$$$$$

  baseUrl = 'http://localhost:8080';
  pageUrl = 'ViewUser';
  showType = 'show';
  operationType = 'operation';
  ADD_Task = 'ADD';
  SEARCH_Task = 'SEARCH';

  async ngOnInit() {
    this.AddButtonShowPermission = await this.authsupservice.HasPermission(this.baseUrl, this.pageUrl, this.ADD_Task, this.showType);
    this.SearchButtonPermission = await this.authsupservice.HasPermission(this.baseUrl, this.pageUrl, this.SEARCH_Task, this.showType);
  }


}
