using Employee.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Employee.Interfaces.Employee
{
    public interface IEmployeeDAL
    {
        List<EmployeeModel> GetEmployees();
        SQLResponseStatusModel InsertEmployee(EmployeeModel employeeModel);
        SQLResponseStatusModel DeleteEmployee(int employeeId);
    }
}
