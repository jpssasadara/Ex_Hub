import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {LoginService} from '../LoginService/login.service';

@Injectable({
  providedIn: 'root'
})
export class AuthSupService {

  constructor(private http: HttpClient, private authService: LoginService) { }
  result = false;
  login = false;
   async HasPermission(baseUrl: string, url1: string, url2: string, Show_OR_operation: string) {

     // ############################ Authentication Checking #############################
     // ########## Checking whether user is successfully login or not ####################
     if (this.authService.isUserLoggedIn()) {
       console.log(' User is Logged in NOW !! ');
       this.login = true;
     } else {
       console.log(' Sorry No permission !! => User is not logged in ');
       this.login = false;
     }
     // ###################################################################################

     // @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Authorization Checking @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     try {
       // for wait execution until response in come "Use <<await>> and <<async>> "
       this.result = await this.http.get<any>(baseUrl + '/' + url1 + '/' + url2 + '/' + Show_OR_operation).toPromise();
       console.log('result of permission' + this.result);
     } catch (e) {
       console.log(e);
       this.result = false;
     }
     // @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

     // $$$$$$$$$$$$$$$$$$$$$$$$$$$ if both are ok Return the Result $$$$$$$$$$$$$$$$$$$$$$$
     if (this.result && this.login) {
       console.log(' You have permission !! ');
       return true;
     } else {
       console.log('Sorry No permission !! ');
       // if user not login
       return false;
     }
     // $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
   }

}
