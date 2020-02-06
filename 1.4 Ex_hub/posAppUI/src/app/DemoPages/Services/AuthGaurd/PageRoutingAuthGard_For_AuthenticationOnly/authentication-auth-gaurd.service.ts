import { Injectable } from '@angular/core';
import {ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot} from '@angular/router';
import {LoginService} from '../../LoginService/login.service';



@Injectable({
  providedIn: 'root'
})
export class AuthenticationAuthGaurdService implements CanActivate {

  constructor(private authService: LoginService, private router: Router ) { }
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {

    console.log(' ActivatedRouteSnapshot ==> ' + route.url);
    console.log(' RouterStateSnapshot8 ===> ' + state);

    if (this.authService.isUserLoggedIn()) {
      return true;
    }
    // if user not login
    this.router.navigate(['']);
    return false;

  }
}
