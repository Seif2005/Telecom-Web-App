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
    public partial class UpdatePoints : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Retrive_total_points(object sender, EventArgs e)
        {
            String mobileNum = Mobile_No.Text;
            DataTable Data = new DataTable();
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("Total_Points_Account", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@mobile_num", mobileNum);
                    command.ExecuteNonQuery();
                }
                Data = GetData("SELECT * FROM customer_account");
            }

            Session["GridData"] = Data;
            Response.Redirect("/Result.aspx");
        }
    }
}