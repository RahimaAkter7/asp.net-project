using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;

namespace PSMS_web_application
{
    public partial class AllPlantDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            FileUpload fu = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("fuPicture");
            if (fu != null)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
                    fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                    e.NewValues["picture"] = fileName;
                }
            }
        }

        
    }
}