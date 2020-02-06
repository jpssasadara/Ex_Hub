import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {PageUserRoleInputBean} from '../../MessageBeans/PageUserRoleBeans/page-user-role-input-bean';


@Injectable({
  providedIn: 'root'
})
export class PageUserRoleService {

  baseUrl = 'http://localhost:8080/PageManagement/GetPagesByUserRolePageSection';
  constructor(private http: HttpClient) { }

  // for get all page list according to userole and section list
  getPagesbyUserRoleAndSection(section: string): Observable<PageUserRoleInputBean[]> {
    console.log(sessionStorage.getItem('token'));
    return this.http.get<PageUserRoleInputBean[]>(this.baseUrl + '/' + section);
  }
}
