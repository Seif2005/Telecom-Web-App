using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telecom_Web_App
{
    public partial class DisplayRemAmount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void lastRemainingAmountClick(object sender, EventArgs e)
        {
            Session["planName"] = txtplanName.Text;
            String planName = Session["planName"].ToString();
            String mobileNo = Session["mobileNo"].ToString();
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
                        string[] array = { "Basic Plan", "Standard Plan", "Premium Plan", "Unlimited Plan", "Family Plan" };
                        if (!Array.Exists(array, element => element == planName))
                        {
                            LiteralError.Text = "<div style='color: red;'>Please Enter a valid plan name</div>";
                        }
                        else
                        {
                            object result1 = command2.ExecuteScalar();
                            int output = int.Parse(result1.ToString());
                            DataTable table = new DataTable("Customers");
                            table.Columns.Add("Column", typeof(int));
                            table.Rows.Add(output);
                            Session["GridData"] = table;
                            Response.Redirect("/Result.aspx");
                        }
                    }
                    else
                    {
                        LiteralError.Text = "<div style='color: red;'>Please Enter a plan name</div>";
                    }
                }
            }
        }
    }
}