using Employee.Interfaces.Employee;
using Employee.Models;
using Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace Employee.Service.Employee
{
    public class EmployeeService : IEmployeeService
    {
        private readonly IEmployeeDAL employeeDAL;
        public EmployeeService(IEmployeeDAL _employeeDAL)
        {
            this.employeeDAL = _employeeDAL;
        }
        public List<EmployeeViewModel> GetEmployees()
        {
            List<EmployeeModel> employeeList = this.employeeDAL.GetEmployees();
            return ConvertEmployeeMTOVM(employeeList);
        }

        public SQLReponseStatusViewModel InsertEmployee(EmployeeViewModel employeeViewModel)
        {
            EmployeeModel employeeModel = ConvertEmployeeVMtoM(employeeViewModel);
            SQLResponseStatusModel sQLResponse = this.employeeDAL.InsertEmployee(employeeModel);
            return ConvertSqlResponseMToVM(sQLResponse);

        }

        public SQLReponseStatusViewModel DeleteEmployee(int employeeId)
        {
            SQLResponseStatusModel sQLResponse = this.employeeDAL.DeleteEmployee(employeeId);
            return ConvertSqlResponseMToVM(sQLResponse);
        }

        private SQLReponseStatusViewModel ConvertSqlResponseMToVM(SQLResponseStatusModel sQLResponse)
        {
            SQLReponseStatusViewModel sqlResponse = new SQLReponseStatusViewModel();
            sqlResponse.Message = sqlResponse.Message;
            sqlResponse.ReturnId = sqlResponse.ReturnId;
            sqlResponse.Status = sqlResponse.Status;
            return sqlResponse;
        }

        private EmployeeModel ConvertEmployeeVMtoM(EmployeeViewModel employeeViewModel)
        {
            EmployeeModel employee = new EmployeeModel();
            employee.Id = employeeViewModel.Id;
            employee.FirstName = employeeViewModel.FirstName;
            employee.LastName = employeeViewModel.LastName;
            employee.Address1 = employeeViewModel.Address1;
            employee.Age = employeeViewModel.Age;
            employee.EmailId = employeeViewModel.EmailId;
            employee.Mobile = employeeViewModel.Mobile;
            employee.PinCode = employeeViewModel.PinCode;
            return employee;
        }

        private List<EmployeeViewModel> ConvertEmployeeMTOVM(List<EmployeeModel> employeeList)
        {
            List<EmployeeViewModel> employees = new List<EmployeeViewModel>();
            foreach (EmployeeModel employeeModel in employeeList)
            {
                EmployeeViewModel employee = new EmployeeViewModel();
                employee.Id = employeeModel.Id;
                employee.FirstName = employeeModel.FirstName;
                employee.LastName = employeeModel.LastName;
                employee.Address1 = employeeModel.Address1;
                employee.Age = employeeModel.Age;
                employee.EmailId = employeeModel.EmailId;
                employee.Mobile = employeeModel.Mobile;
                employee.PinCode = employeeModel.PinCode;
                employees.Add(employee);
            }
            return employees;
        }

        
    }
}
