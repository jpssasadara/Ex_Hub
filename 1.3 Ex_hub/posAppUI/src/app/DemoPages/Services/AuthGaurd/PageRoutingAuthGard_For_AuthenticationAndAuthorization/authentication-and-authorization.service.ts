import { Injectable } from '@angular/core';
import {ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot} from '@angular/router';
import {LoginService} from '../../LoginService/login.service';
import {HttpClient, HttpErrorResponse} from '@angular/common/http';
import {AuthSupService} from '../../Authentication_Authorization_Support_Service/auth-sup.service';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationAndAuthorizationService implements CanActivate {

  result = false;
  login = false;
  baseUrl2 = 'http://localhost:8080';

  permission: boolean;
  constructor(private authsup: AuthSupService, private http: HttpClient, private authService: LoginService, private router: Router ) {

  }
  async canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    console.log(' ActivatedRouteSnapshot ==> ' + route.url);
    console.log(' RouterStateSnapshot8 ===> ' + state);
    this.permission = await this.authsup.HasPermission(this.baseUrl2, route.url[0].toString(), route.url[1].toString(), 'show');

    console.log('Permission get from SuthSupport Services => ' + this.permission);
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
  }
}

