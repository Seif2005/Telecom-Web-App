using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telecom_Web_App
{
    public partial class GoHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"].ToString() == "admin")
            {
                Response.Redirect("/AdminOptions.aspx");
            }
            else
            {
                Response.Redirect("/CustomerOptions.aspx");
            }
        }
    }
}