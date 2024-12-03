using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telecom_Web_App
{
    public partial class ExtraAmount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void lastExtraAmountClick(object sender, EventArgs e)
        {
            Session["planName"] = planName2.Text;
            String planName = Session["planName"] as string;
            String mobileNo = Session["mobileNo"] as string;
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                connection.Open();
                using (SqlCommand command2 = new SqlCommand("SELECT dbo.Remaining_plan_amount(@planName,@mobileNo)", connection))
                {
                    command2.Parameters.AddWithValue("@mobileNo", mobileNo);
                    command2.Parameters.AddWithValue("@planName", planName);
                    if (planName != "")
                    {
                        object result1 = command2.ExecuteScalar();
                        int output = int.Parse(result1.ToString());
                        Response.Write(output);
                    }
                }
            }
        }
    }
}