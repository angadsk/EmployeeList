using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Employee.ViewModels
{
    public class EmployeeViewModel 
    {
        public int Id { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        public string Address1 { get; set; }
        public string Age { get; set; }
        [Required]
        public string Mobile { get; set; }
        public string PinCode { get; set; }
        public string EmailId { get; set; }
        public string LoggedInBy { get; set; }


    }
}
