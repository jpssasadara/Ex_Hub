import { Injectable } from '@angular/core';
import {ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot} from '@angular/router';
import {LoginService} from '../../LoginService/login.service';
import {isBoolean} from 'util';
import {HttpClient, HttpErrorResponse} from '@angular/common/http';
import { catchError } from 'rxjs/operators';
import { throwError} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationAndAuthorizationService implements CanActivate {

  result = false;
  login = false;
  baseUrl2 = 'http://localhost:8080';

  constructor(private http: HttpClient, private authService: LoginService, private router: Router ) {

  }
  async canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    console.log(' ActivatedRouteSnapshot ==> ' + route.url);
    console.log(' RouterStateSnapshot8 ===> ' + state);

    if (this.authService.isUserLoggedIn()) {
      console.log(' User is Logged in NOW !! ');
      this.login = true;
    } else {
      console.log(' Sorry No permission !! => User is not logged in ');
      this.login = false;
    }
    try {
      // for wait execution until response in come "Use <<await>> and <<async>> "
      this.result = await this.http.get<any>(this.baseUrl2 + '/' + route.url[0] + '/' + route.url[1] + '/show').toPromise();
    } catch (e) {
      console.log(e);
      this.result = false;
    }

    if (this.result && this.login) {
      console.log(' You have permission !! ');
      return true;
    } else {
      console.log('Sorry No permission !! ');
      // if user not login
      this.router.navigate(['']);
      return false;
    }
    // console.log("Last Execution !! ");
   // return this.result && this.login;
  }
}

