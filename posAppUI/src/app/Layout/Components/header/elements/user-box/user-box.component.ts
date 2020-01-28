import {Component, OnInit} from '@angular/core';
import {ThemeOptions} from '../../../../../theme-options';
import {LoginService} from '../../../../../DemoPages/Services/LoginService/login.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-user-box',
  templateUrl: './user-box.component.html',
})
export class UserBoxComponent implements OnInit {

  constructor(public loginservice: LoginService, public globals: ThemeOptions,private router: Router) {
  }
 username = null;
  ngOnInit() {
    if (sessionStorage.getItem('username') && sessionStorage.getItem('token')) {
       this.username = sessionStorage.getItem('username');
    }
  }

  logoutfunc(){
    this.loginservice.logOut();
    this.router.navigate(['/']);
  }


}
