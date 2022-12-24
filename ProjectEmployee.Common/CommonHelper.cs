using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectEmployee.Common
{
    public class CommonHelper
    {
        private IConfiguration Configuration;

        public CommonHelper(IConfiguration _configuration)
        {
            Configuration = _configuration;
        }

        public static object ShowNotifyMessage(string v, object message)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Sets nofity message and displays on page.
        /// </summary>
        /// <param name="type"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public static string ShowNotifyMessage(string type, string message)
        {
            message = message.Replace("'", " ");
            var strString = @"<script type='text/javascript' language='javascript'>$(function() { $.notify('" + type + "','" + message + "') ; })</script>";
            return strString;
        }

        /// <summary>
        /// This function converts base64 string to plain text
        /// </summary>
        /// <param name="base64EncodedData">Base64 Encoded Data</param>
        /// <returns>plain text string</returns>
        public static string Base64Decode(string base64EncodedData)
        {
            try
            {
                if (!string.IsNullOrEmpty(base64EncodedData))
                {
                    var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData.Replace(" ", "+"));
                    return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
                }
                else
                {
                    return string.Empty;
                }
            }
            catch
            {
                return string.Empty;
            }
        }


        public const string connectionString = "Data Source=(LocalDb)\\Project2022;Initial Catalog=ProjectEmployee;Integrated Security=True;MultipleActiveResultSets=False";
    }
}
