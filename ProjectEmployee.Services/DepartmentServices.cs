using Dapper;
using Microsoft.Extensions.Configuration;
using ProjectEmployee.Common;
using ProjectEmployee.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectEmployee.Services
{
    public class DepartmentServices
    {
        /// <summary>
        /// This service use to get all Department data
        /// </summary>
        /// <returns></returns>
        public PagedList<Department> MasterDepartmentSelectAll()
        {
            PagedList<Department> Department = new PagedList<Department>();

            using (SqlConnection con = new SqlConnection(CommonHelper.connectionString))
            {
                var task = con.QueryMultiple("MasterDepartment_SelectAll", commandType: CommandType.StoredProcedure);
                Department.Values.AddRange(task.Read<Department>());
                Department.TotalRecord = task.Read<int>().SingleOrDefault();
            }
            return Department;
        }
    }
}
