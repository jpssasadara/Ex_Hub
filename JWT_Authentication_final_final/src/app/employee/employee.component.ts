import { Component, OnInit } from '@angular/core';
import { HttpClientService, Employee } from '../service/httpclient.service';
import * as jwt_decode from 'jwt-decode';
import {User1} from '../Models/user1';

@Component({
  selector: 'app-employee',
  templateUrl: './employee.component.html',
  styleUrls: ['./employee.component.css']
})
export class EmployeeComponent implements OnInit {

  employees:Employee[];

 //  token = 'eyJhbGciOiJIUzUxMiJ9.eyJwcml2aWxlZ2VzIjoiQ1JVRCIsInN1YiI6ImphdmFpbnVzZSIsIlVzZXJSb2xlIjoiYWRtaW5zIiwiZXhwIjoxNTc3Nzg3NzYyLCJpYXQiOjE1Nzc3Njk3NjJ9.2EECUVgfoaZigrqaY1XTWpuBHx4GiM4FIaXCzFJfTCuHT6YRNQ3g1zcG8FREg2Qx5lpSMAsp0-oJCsDLDbO4Wg';
 decoded: User1;

  constructor(
    private httpClientService:HttpClientService
  ) { }

  ngOnInit() {
     this.httpClientService.getEmployees().subscribe(
      response => {
        this.handleSuccessfulResponse(response);
        this.decoded = jwt_decode(sessionStorage.getItem('token'));
        console.log(this.decoded);
        console.log('User1 Role => ' + this.decoded.UserRole);
      },
     );
  }

handleSuccessfulResponse(response) {
    this.employees = response;
}

deleteEmployee(employee: Employee): void {
   this.httpClientService.deleteEmployee(employee)
     .subscribe( data => {
      this.employees = this.employees.filter(u => u !== employee);
   });
}
}
