import { Injectable } from '@angular/core';
import {ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot} from '@angular/router';
import {LoginService} from '../../LoginService/login.service';
import {isBoolean} from 'util';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationAndAuthorizationService implements CanActivate {
  result :boolean = false;
  constructor(private authService: LoginService, private router: Router ) { }
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    console.log(" ActivatedRouteSnapshot ==> " + route.url);
    console.log(" RouterStateSnapshot8 ===> " + state);
    if (this.authService.isUserLoggedIn()){
      console.log( route.url[0]+" "+route.url[1])
      this.authService.isShowAuthorized( route.url[0], route.url[1] ).subscribe(data => {
        console.log(data);
        if (data == true) {
          console.log(data+"sasa");
          this.result= true;
        } else {
          console.log("Sorry No permission !!! ");
          // if user not Show Authorized
          this.result= false;
        }
      });

      if(this.result){
        return this.result;
      }else{
        console.log("Sorry No permission !! ");
        // if user not login
        this.router.navigate(['']);
        return false;
      }
      //return true;
      }else{
      console.log("Sorry No permission !! ");
      // if user not login
      this.router.navigate(['']);
      return false;
    }


  }
}
