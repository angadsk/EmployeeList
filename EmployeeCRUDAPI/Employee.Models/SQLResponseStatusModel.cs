using System;
using System.Collections.Generic;
using System.Text;

namespace Employee.Models
{
    public class SQLResponseStatusModel
    {
        public bool Status { get; set; }
        public string Message { get; set; }
        public int ReturnId { get; set; }
    }
}
