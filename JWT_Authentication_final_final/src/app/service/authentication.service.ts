import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';
import * as jwt_decode from 'jwt-decode';
import {User1} from '../Models/user1';

export class User{
  constructor(
    public status:string,
  ) {}

}

export class JwtResponse {

  constructor(
    public jwttoken:string,
  ) {}

}

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {

  decoded: User1;
  constructor(
    private httpClient:HttpClient
  ) {
  }

  authenticate(username, password) {
    return this.httpClient.post<any>('http://localhost:8080/authenticate',{username,password}).pipe(
      map(
        userData => {
          sessionStorage.setItem('username',username);
          let tokenStr= 'Bearer '+userData.token;
          sessionStorage.setItem('token', tokenStr);
          return userData;
        }
      )

    );
  }


  isUserLoggedIn() {
    const user = sessionStorage.getItem('username')
    //console.log(!(user === null))
    return !(user === null)
  }

  logOut() {
    sessionStorage.removeItem('username')
  }

  //  for checking whether logged user's token has role as Admin or not
  isAdmin() {
    this.decoded = jwt_decode(sessionStorage.getItem('token'));
    console.log(this.decoded);
    console.log('User1 Role => ' + this.decoded.UserRole);
    if (this.decoded.UserRole == 'admins') {
      return true;
    } else {
      return false;
    }

  }
}
