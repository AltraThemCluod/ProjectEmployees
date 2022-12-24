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
    public class EmployeeServices
    {
        /// <summary>
        /// This service use to get employee all data
        /// </summary>
        /// <param name="employee"></param>
        /// <returns></returns>
        public SuccessResult<Employee> EmployeeUpsert(Employee employee)
        {
            SuccessResult<Employee> Employee = null;
            var param = new DynamicParameters();

            param.Add("@Id", employee.Id, dbType: DbType.Int32, direction: ParameterDirection.Input);
            param.Add("@Name", employee.Name, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@Email", employee.Email, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@Password", employee.Password, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@BirthDate", employee.BirthDate, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@JoiningDate", employee.JoiningDate, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@ProfileImage", employee.ProfileImage, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@Salary", employee.Salary, dbType: DbType.Decimal, direction: ParameterDirection.Input);
            param.Add("@DepartmentId", employee.DepartmentId, dbType: DbType.Int32, direction: ParameterDirection.Input);

            using (SqlConnection con = new SqlConnection(CommonHelper.connectionString))
            {
                var task = con.QueryMultiple("Employee_Upsert", param, commandType: CommandType.StoredProcedure);
                Employee = task.Read<SuccessResult<Employee>>().SingleOrDefault();
                Employee.Item = task.Read<Employee>().SingleOrDefault();
            }
            return Employee;
        }

        /// <summary>
        /// This service use to get employee data in employee by id
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public SuccessResult<Employee> EmployeeById(int Id)
        {
            SuccessResult<Employee> Employee = null;
            var param = new DynamicParameters();

            param.Add("@Id", Id, dbType: DbType.Int32, direction: ParameterDirection.Input);

            using (SqlConnection con = new SqlConnection(CommonHelper.connectionString))
            {
                var task = con.QueryMultiple("Employee_ById", param, commandType: CommandType.StoredProcedure);
                Employee = task.Read<SuccessResult<Employee>>().SingleOrDefault();
                Employee.Item = task.Read<Employee>().SingleOrDefault();
            }

            return Employee;
        }

        /// <summary>
        /// This service use to get all employee data
        /// </summary>
        /// <param name="pageParam"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        public PagedList<Employee> EmployeeSelectAll(PageParam pageParam, string search,string OrderBy,string ColumName)
        {
            PagedList<Employee> Employee = new PagedList<Employee>();

            var param = new DynamicParameters();
            param.Add("@Offset", pageParam.Offset, dbType: DbType.Int64, direction: ParameterDirection.Input);
            param.Add("@Limit", pageParam.Limit, dbType: DbType.Int64, direction: ParameterDirection.Input);
            param.Add("@Search", search, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@OrderBy", OrderBy, dbType: DbType.String, direction: ParameterDirection.Input);
            param.Add("@ColumName", ColumName, dbType: DbType.String, direction: ParameterDirection.Input);

            using (SqlConnection con = new SqlConnection(CommonHelper.connectionString))
            {
                var task = con.QueryMultiple("Employee_SelectAll", param, commandType: CommandType.StoredProcedure);
                Employee.Values.AddRange(task.Read<Employee>());
                Employee.TotalRecord = task.Read<int>().SingleOrDefault();
            }
            return Employee;
        }

        /// <summary>
        /// Thi method use to delete employee data in employee by id
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public bool EmployeeDelete(int Id)
        {
            bool result = false;
            var param = new DynamicParameters();

            param.Add("@Id", Id, dbType: DbType.Int32, direction: ParameterDirection.Input);

            using (SqlConnection con = new SqlConnection(CommonHelper.connectionString))
            {
                var task = con.Query<bool>("Employee_Delete", param, commandType: CommandType.StoredProcedure);
                result = task.SingleOrDefault<bool>();
            }
            return result;
        }
    }
}
