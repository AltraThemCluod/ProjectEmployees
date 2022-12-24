using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectEmployee.Models
{
    public class Employee
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Username is required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Email is required")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Password is required")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Birth Date is required")]
        public string BirthDate { get; set; }
        public int Age { get; set; }

        [Required(ErrorMessage = "Joining Date is required")]
        public string JoiningDate { get; set; }
        public string ProfileImage { get; set; }
        public decimal Salary { get; set; }
        [Required(ErrorMessage = "Please select a department")]
        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; }
        public bool IsDeleted { get; set; }
        public DateTime DeletedAt { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}
