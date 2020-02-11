import { Component, OnInit, ViewChild } from '@angular/core';
import { EmployeeModel } from '../Model/employeeModel';
import { EmployeeService } from './../employee.service';
import { ToastrService } from 'ngx-toastr';
import { Subject, observable, BehaviorSubject, ReplaySubject } from 'rxjs';

@Component({
  selector: 'app-employeecrudoperation',
  templateUrl: './employeecrudoperation.component.html',
  styleUrls: ['./employeecrudoperation.component.css']
})
export class EmployeecrudoperationComponent implements OnInit {

  employee: EmployeeModel = new EmployeeModel();
  employeeList: EmployeeModel[];
  error: any[];
  private subjectExample = new BehaviorSubject<string>('Registered');

  constructor(
    private employeeService: EmployeeService,
    private tostService: ToastrService
  ) { }

  ngOnInit() {
    this.subjectExample.asObservable();
    this.subjectExample.next('I am using Subject1');
    this.subjectExample.next('I am using Subject2');
    this.subjectExample.next('I am using Subject3');
    this.subjectExample.next('I am using Subject4');
    this.subjectExample.next('I am using Subject5`');


    // this.subjectexampleData();
    this.subjectExample.subscribe(res => {
      console.log('res', res);
    });
    this.subjectExample.next('I am using Subject');
  }

  subjectexampleData() {
    this.subjectExample.subscribe(res => {
      console.log('res', res);
    });
  }

  getEmployeeDetails() {
    this.employeeService.getemployeeList().subscribe(res => {
      this.employeeList = res;
    });
  }

  addEditEmployee() {
    this.error = [];
    this.employeeService.insertemployeeDetail(this.employee).subscribe(res => {
      if (res) {
        console.log('Response', res);
        this.getEmployeeDetails();
      }
    }, (err) => {
      if (err.status === 400) {
        this.tostService.error(err.error.FirstName);
        this.tostService.error(err.error.LastName);
        this.tostService.error(err.error.Mobile);
      }
    });
  }

  clearScreen() {
    this.employee = new EmployeeModel();
  }

  editemployee(employeeModel: any) {
    this.employee = employeeModel;
  }
}
