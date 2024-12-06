using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telecom_Web_App
{
    public partial class SmsOffersByAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        protected void CheckSMS(object sender, EventArgs e)
        {
            String mobile = txtMobileNo.Text;
            if (mobile.Length != 11)
            {
                //Response.Write("Incorrect Mobile Number");
                LiteralError.Text = "<div style='color: red;'>Incorrect Mobile Number</div>";
            }
            else
            {
                DataTable Data = new DataTable();
                string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();

                    string sql = "SELECT * FROM Account_SMS_Offers(@mobile)";

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@mobile", mobile);

                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(Data);
                        }
                    }
                }

                Session["GridData"] = Data;
                Response.Redirect("/Result.aspx");
            }
        }
    }
}