using System;
using System.Collections.Generic;
using System.Text;

namespace Employee.Models
{
    public class EmployeeModel
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address1 { get; set; }
        public string Age { get; set; }
        public string Mobile { get; set; }
        public string PinCode { get; set; }
        public string EmailId { get; set; }
        public string LoggedInBy { get; set; }
    }
}
