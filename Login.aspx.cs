using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telecom_Web_App
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginClick(object sender, EventArgs e)
        {
                string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();

                String mobile = txtMobileNo.Text;
                String pass = txtPassword.Text;
                if (mobile == "admin" && pass == "admin")
                {
                    Session["userType"] = "admin";
                    Response.Redirect("/AdminOptions.aspx");
                }
                if (mobile == "" || pass == "" || mobile.Length != 11)
                {
                    //Response.Write("Please Enter Valid Mobile Number and Password.");
                LiteralError.Text = "<div style='color: red;'>Please Enter Valid Mobile Number and Password</div>";
            }
                else
                {
                    using (SqlConnection conn = new SqlConnection(connStr))
                    {
                        conn.Open();

                        using (SqlCommand command = new SqlCommand("SELECT dbo.AccountLoginValidation(@mobile_num, @pass)", conn))
                        {
                            // Add the parameters required by the function
                            command.Parameters.AddWithValue("@mobile_num", mobile); // Replace with actual mobile number
                            command.Parameters.AddWithValue("@pass", pass); // Replace with actual password

                            // Execute the command and get the scalar value
                            object result = command.ExecuteScalar();
                            bool loginValid = (bool)result;
                            // Process the result
                            if (loginValid)
                            {
                                //creating Session
                                Session["mobileNo"] = mobile;
                                Session["userType"] = "customer";
                                Response.Redirect("/CustomerOptions.aspx");
                            }
                            else
                            {
                            LiteralError.Text = "<div style='color: red;'>Invalid Login</div>";
                        }
                            conn.Close();
                        }
                    }
                }
            
        }
    }
}