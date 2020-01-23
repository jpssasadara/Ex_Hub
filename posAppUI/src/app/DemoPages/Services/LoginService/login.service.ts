import { Injectable } from '@angular/core';
import {HttpClient, HttpErrorResponse} from '@angular/common/http';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  baseUrl = 'http://localhost:8080/login/authenticate';
  constructor(private http: HttpClient) { }

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
    const user = sessionStorage.getItem('username')
    // console.log(!(user === null))
    return !(user === null)
  }
}
