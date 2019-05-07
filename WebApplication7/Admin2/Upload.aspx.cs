using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7.Admin2
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];
            string filename = ProductID + ".jpg";

            currentimage.ImageUrl = "~/Images/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];
            string filename = ProductID + ".jpg";
            string savelocation = Server.MapPath("~/Images/" + filename);

            FileUploadImage.SaveAs(savelocation);
        }
    }
}