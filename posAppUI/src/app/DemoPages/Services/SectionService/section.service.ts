import { Injectable } from '@angular/core';
import {HttpClient, HttpErrorResponse, HttpHeaders} from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { throwError} from 'rxjs';
import {SectionInputBean} from '../../MessageBeans/SectionBeans/section-input-bean';



@Injectable({
  providedIn: 'root'
})
export class SectionService {

  baseUrl = 'http://localhost:8080/pageSection/AllSection';
  constructor(private http: HttpClient) { }

  // for get all instance list
  getAllSections(): Observable<SectionInputBean[]> {
    console.log(sessionStorage.getItem('token'))
    //const headers = new HttpHeaders({ Authorization: sessionStorage.getItem('token') });
   // var headers = new HttpHeaders().set("Authorization",sessionStorage.getItem('token'));

    return this.http.get<SectionInputBean[]>(this.baseUrl);
  }
}

