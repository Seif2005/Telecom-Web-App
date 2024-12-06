using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Telecom_Web_App.Helpers;

namespace Telecom_Web_App
{
    public partial class RemovePlanBenefits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void RemoveClick(object sender, EventArgs e)
        {
            //Benefits_Account 
            String mobile = txtMobileno.Text;
            String planId = txtPlanID.Text;
            if(mobile.Length != 11)
            {
                //Response.Write("Invalid Mobile Number");
                LiteralError.Text = "<div style='color: red;'>Invalid Mobile Numbe</div>";
            }
            else
            {
                DataTable Data = new DataTable();
                string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("Benefits_Account", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.AddWithValue("@mobile_num", mobile);
                        command.Parameters.AddWithValue("@plan_id", int.Parse(planId));
                        command.ExecuteNonQuery();
                    }
                    Data = GetData("SELECT * FROM Benefits");
                }

                Session["GridData"] = Data;
                Response.Redirect("/Result.aspx");
            }
        }
    }
}