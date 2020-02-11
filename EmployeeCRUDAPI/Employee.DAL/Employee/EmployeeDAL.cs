using Dapper;
using Employee.Common.Constant;
using Employee.Interfaces.Employee;
using Employee.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Text;

namespace Employee.DAL.Employee
{
    public class EmployeeDAL :BaseRepository,  IEmployeeDAL
    {
        private string ConnectionString { get; set; }

        public EmployeeDAL(IConfiguration configuration) : base(configuration)
        {
            ConnectionString = configuration["ConnectionString:DefaultConnection"];
        }

        public List<EmployeeModel> GetEmployees() 
        {
            string spName = StoredProcedureNames.GetEmployee;

            return GetList<EmployeeModel>(spName, null);
        }

        public SQLResponseStatusModel InsertEmployee(EmployeeModel employeeModel)
        {
            string spName = StoredProcedureNames.InsertAndUpdateEmployee;

            DynamicParameters dynamicParams = new DynamicParameters();
            dynamicParams.Add("@id", employeeModel.Id);
            dynamicParams.Add("@firstName", employeeModel.FirstName);
            dynamicParams.Add("@lastName", employeeModel.LastName);
            dynamicParams.Add("@address1", employeeModel.Address1);
            dynamicParams.Add("@age", employeeModel.Age);
            dynamicParams.Add("@mobile", employeeModel.Mobile);
            dynamicParams.Add("@pincode", employeeModel.PinCode);
            dynamicParams.Add("@emailId", employeeModel.EmailId);
            dynamicParams.Add("@logedInBy", employeeModel.LoggedInBy);

            return InsertRepo<SQLResponseStatusModel>(spName, dynamicParams);
        }

        public SQLResponseStatusModel DeleteEmployee(int employeeId)
        {
            string spName = StoredProcedureNames.DeleteEmployee;

            DynamicParameters dynamicParams = new DynamicParameters();
            dynamicParams.Add("@employeeId", employeeId);

            return DeleteRepo<SQLResponseStatusModel>(spName, dynamicParams);
        }
    }
}
