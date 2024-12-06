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
    public partial class Wallet_Using_MobileNo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void checkWallet(object sender, EventArgs e)
        {
            String mobile = txtMobile.Text;
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            if (mobile.Length!=11)
            {
                //Response.Write("Please Enter a Valid Mobile Number.");
                LiteralError.Text = "<div style='color: red;'>Please Enter a Valid Mobile Number</div>";
            }
            else
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();
                    using (SqlCommand command = new SqlCommand("SELECT dbo.Wallet_MobileNo(@mobile)", conn))
                    {
                        command.Parameters.AddWithValue("@mobile ", mobile);

                        object result = command.ExecuteScalar();
                        if (result.ToString() != "")
                        {
                            bool res = (bool)result;
                            if (res)
                            {
                                //Response.Write("Wallet Exists");
                                LiteralError.Text = "<div style='color: red;'>Wallet Exists</div>";
                            }
                            else
                            {
                                //Response.Write("Wallet Does Not Exist");
                                LiteralError.Text = "<div style='color: red;'>Wallet Does Not Exist</div>";
                            }
                            
                        }
                        else
                        {
                            //Response.Write("Please Enter a Valid Mobile Number");
                            LiteralError.Text = "<div style='color: red;'>Please Enter a Valid Mobile Number</div>";
                        }
                    }

                }
            }

        }
    }
}