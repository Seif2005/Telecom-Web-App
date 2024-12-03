using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Telecom_Web_App.Helpers;

namespace Telecom_Web_App
{
    public partial class AccountUsageByPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void checkClick(object sender, EventArgs e)
        {
            String mobile  = txtMobileno.Text;
            String date = txtTime.Text;
            DataTable Data = new DataTable();
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();

            using (SqlConnection connection = new SqlConnection(connStr))
            {
                connection.Open();

                string sql = "SELECT * FROM Account_Usage_Plan(@mobile, @date)";

                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@mobile", mobile);
                    command.Parameters.AddWithValue("@date", date);

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