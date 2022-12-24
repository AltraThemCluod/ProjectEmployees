using DataTables.Mvc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using ProjectEmployee.Common;
using ProjectEmployee.Models;
using ProjectEmployee.Services;
using System.Diagnostics;
using static ProjectEmployee.Common.Enums;

namespace ProjectEmployee.Controllers
{
    public class HomeController : Controller
    {
        EmployeeServices employeeServices = new EmployeeServices();
        DepartmentServices departmentServices = new DepartmentServices();

        private readonly IWebHostEnvironment _webHostEnvironment;
        public HomeController(IWebHostEnvironment webHostEnvironment)
        {
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index()
        {
            if (TempData["openPopup"] != null)
                ViewBag.openPopup = TempData["openPopup"];

            return View();
        }

        
        public IActionResult Details(string ri = "MA==")
        {
            if (TempData["openPopup"] != null)
                ViewBag.openPopup = TempData["openPopup"];

            ViewBag.Department = MasterDepartment();

            int DecodeId = Convert.ToInt32(CommonHelper.Base64Decode(ri));

            var model = employeeServices.EmployeeById(DecodeId);

            return View(model.Item);
        }

        /// <summary>
        /// This method use in get Department all data
        /// </summary>
        /// <returns></returns>
        public IList<SelectListItem> MasterDepartment()
        {
            List<SelectListItem> items = new List<SelectListItem>();
            try
            {
                PageParam pageParam = new PageParam();
                pageParam.Offset = 0;
                pageParam.Limit = 0;

               var Department = departmentServices.MasterDepartmentSelectAll();

                foreach (var master in Department.Values)
                {
                    items.Add(new SelectListItem() { Text = master.Name.ToString(), Value = Convert.ToString(master.Id) });
                }
                return items;
            }
            catch (Exception)
            {
                return items;
            }
        }

        /// <summary>
        /// This method use to delete employee data
        /// </summary>
        /// <param name="Id">Users Id</param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult DeleteEmployee(string Id = "MA==")
        {
            int DecodeId = Convert.ToInt32(CommonHelper.Base64Decode(Id));
            var result = employeeServices.EmployeeDelete(DecodeId);
            return Json(result);
        }

        /// <summary>
        /// This method use to get employee all data
        /// </summary>
        /// <param name="Offset"></param>
        /// <param name="Limit"></param>
        /// <param name="Search"></param>
        /// <returns></returns>
        [HttpGet]
        public JsonResult GetEmployeeAllData(int Offset,int Limit,string Search , string OrderBy = "desc", string ColumName = "Id")
        {
            PageParam pageParam = new PageParam();
            pageParam.Offset = Offset;
            pageParam.Limit = Limit;

            var response = employeeServices.EmployeeSelectAll(pageParam, Search, OrderBy, ColumName);

            return Json(response);
        }

        /// <summary>
        /// This method use to create and update employee data
        /// </summary>
        /// <param name="employee"></param>
        /// <param name="ProfileImage"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SaveEmployeeDetails(Employee employee, IFormFile ProfileImage)
        {

            if (ProfileImage != null)
            {
                var imagePath = @"\EmployeeProfile\";
                var uploadPath = _webHostEnvironment.WebRootPath + imagePath;

                //Create Directory
                if (!Directory.Exists(uploadPath))
                {
                    Directory.CreateDirectory(uploadPath);
                }

                //Create Uniq file name
                var fileName = DateTime.Now.ToString("ddMMyyyyhhmmss") + "_" + Path.GetFileName(ProfileImage.FileName);
                string fullPath = uploadPath + fileName;

                imagePath = imagePath + @"\";
                var filePath = @".." + Path.Combine(imagePath, fileName);

                using (var fileStream = new FileStream(fullPath, FileMode.Create))
                {
                    ProfileImage.CopyToAsync(fileStream);
                    employee.ProfileImage = imagePath + fileName;
                }
            }

            SuccessResult<Employee> result = employeeServices.EmployeeUpsert(employee);
            if (result.Item == null)
            {
                TempData["openPopup"] = CommonHelper.ShowNotifyMessage(result.Message, MessageType.error.ToString());
                return RedirectToAction("Index", "Home", new { Area = "" });
            }
            TempData["openPopup"] = CommonHelper.ShowNotifyMessage(result.Message, MessageType.success.ToString());
            return RedirectToAction("Index", "Home", new { Area = "" });
        }

    }
}