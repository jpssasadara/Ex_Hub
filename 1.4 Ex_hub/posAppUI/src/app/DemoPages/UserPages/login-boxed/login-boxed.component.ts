import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LoginService } from '../../Services/LoginService/login.service';


@Component({
  selector: 'app-login-boxed',
  templateUrl: './login-boxed.component.html',
  styles: []
})
export class LoginBoxedComponent implements OnInit {
  username = ''
  password = ''
  invalidLogin = false

  constructor(private router: Router,
              private loginservice: LoginService) { }

  ngOnInit() {
  }

  checkLogin() {
    (this.loginservice.authenticate(this.username, this.password).subscribe(
            data => {
              this.router.navigate(['/dashboardsMenu'])
              this.invalidLogin = false;
              alert('Success');
            },
            error => {
              this.invalidLogin = true;
              alert('Error');

            }
        )
    );

  }
}
