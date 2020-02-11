using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Employee.Interfaces.Employee;
using Employee.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Employee.CRUDAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly IEmployeeService employeeService;
        public EmployeeController(IEmployeeService _employeeService)
        {
            this.employeeService = _employeeService;
        }

        [HttpGet("GetEmployee")]
        public IActionResult GetEmployeeDetails()
        {
            try
            {
                return Ok(this.employeeService.GetEmployees());
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpPost("InsertEmployee")]
        public IActionResult InsertEmployee(EmployeeViewModel employee)
        {
            try
            {
                if (ModelState.IsValid == false)
                {
                    return BadRequest(ModelState);
                }
                return Ok(this.employeeService.InsertEmployee(employee));
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
            
        }

        [HttpDelete("DeleteEmployee")]
        public IActionResult DeleteEmployee(int employeeId)
        {
            try
            {
                return Ok(this.employeeService.DeleteEmployee(employeeId));
            }
            catch (Exception ex)
            {

                return StatusCode(500, ex.Message);
            }
        }
    }
}