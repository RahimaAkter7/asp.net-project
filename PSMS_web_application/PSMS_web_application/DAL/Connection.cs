using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSMS_web_application.DAL
{
    public class Connection
    {

        public static string GetConnectionSrting()
        {

            string conStr = @"Data Source=.;Initial Catalog=PSMS;  Integrated Security=true";

            return conStr;


        }
    }
}