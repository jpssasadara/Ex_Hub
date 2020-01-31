import { Injectable } from '@angular/core';
import {HttpClient, HttpErrorResponse} from '@angular/common/http';
import { map } from 'rxjs/operators';
import {JwtInputBean} from '../../MessageBeans/jwt-input-bean';
import * as jwt_decode from 'jwt-decode';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class LoginService {
  baseUrl = 'http://localhost:8080/login/authenticate';
  baseUrl2 = 'http://localhost:8080';
  constructor(private http: HttpClient) { }
  decoded: JwtInputBean;
  // login
  authenticate(username, password) {
    return this.http.post<any>(`${this.baseUrl}`, {username, password}).pipe(
        map(
            userData => {
              sessionStorage.setItem('username', username);
              const tokenStr = 'Bearer ' + userData.token;
              sessionStorage.setItem('token', tokenStr);
              return userData;
            }
        )

    );
  }
// check only Authentication
  isUserLoggedIn() {
      this.decoded = jwt_decode(sessionStorage.getItem('token'));
      console.log('User Name from jwt  => ' + this.decoded.sub);
      const user = sessionStorage.getItem('username');
    // console.log(!(user === null))
      return (user === this.decoded.sub);
  }
  // show Authorization
    isShowAuthorized(pageUrl: any, task: any): Observable<boolean> {
        return this.http.get<boolean>(this.baseUrl2 + '/' + pageUrl + '/' + task + '/show');
    }
  // Logout services
    logOut() {
      if ( sessionStorage.getItem('token') != null || sessionStorage.getItem('username') != null) {
          sessionStorage.removeItem('username');
          sessionStorage.removeItem('token');
      }
    }

}
