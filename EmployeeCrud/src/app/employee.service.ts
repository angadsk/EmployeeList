import { Injectable } from '@angular/core';
import { Observable, observable } from 'rxjs';
import { EmployeeModel } from './Model/employeeModel';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  constructor(
    private http: HttpClient
  ) { }

  getemployeeList(): Observable<EmployeeModel[]> {
    return this.http.get<EmployeeModel[]>('http://localhost:51355/api/Employee/' + 'GetEmployee');
  }

  insertemployeeDetail(employeeDetails: EmployeeModel): Observable<any> {
    return this.http.post<any>('http://localhost:51355/api/Employee/' + 'InsertEmployee', employeeDetails);
  }
}
