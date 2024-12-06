using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Telecom_Web_App.Helpers;

namespace Telecom_Web_App
{
    public partial class Num_Accept_Payment_Trans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Get_TotalNumTrans_TotalNumPoints(object sender, EventArgs e)
        {
            String mobileNum=AccMobileNo.Text;
            if (mobileNum.Length != 11)
            {
                Response.Write("Incorrect mobile Number");
            }
            else
            {
                DataTable Data = new DataTable();
                string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("Account_Payment_Points", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.AddWithValue("@mobile_num", mobileNum);

                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(Data);
                        }
                    }
                }
                // Assuming you need to use the Data variable afterward
                Session["GridData"] = Data;
                Response.Redirect("/Result.aspx");
            }
        }
    }
}