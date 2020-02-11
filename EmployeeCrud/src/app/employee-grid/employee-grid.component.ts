import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { EmployeeModel } from '../Model/employeeModel';
import { EmployeeService } from '../employee.service';


@Component({
  selector: 'app-employee-grid',
  templateUrl: './employee-grid.component.html',
  styleUrls: ['./employee-grid.component.css']
})
export class EmployeeGridComponent implements OnInit {

  employeeList: EmployeeModel[];
  @Output() employeeModel = new EventEmitter<EmployeeModel>();

  constructor(
    private employeeService: EmployeeService
  ) { }

  ngOnInit() {
    this.getEmployeeDetails();
  }

  getEmployeeDetails() {
    this.employeeService.getemployeeList().subscribe(res => {
      this.employeeList = res;
    });
  }

  editemployee(employee: EmployeeModel) {
    this.employeeModel.emit(employee);
  }

}
