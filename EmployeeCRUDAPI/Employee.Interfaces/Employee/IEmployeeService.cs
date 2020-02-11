using Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace Employee.Interfaces.Employee
{
    public interface IEmployeeService 
    {
        List<EmployeeViewModel> GetEmployees();
        SQLReponseStatusViewModel InsertEmployee(EmployeeViewModel employee);

        SQLReponseStatusViewModel DeleteEmployee(int employeeId);
    }
}
