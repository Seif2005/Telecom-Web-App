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
    public partial class AccountPlanDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void checkClick(object sender, EventArgs e)
        {
            String planId = txtPlanId.Text;
            String subDate = txtTime.Text;

            DataTable Data = new DataTable();
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();

            using (SqlConnection connection = new SqlConnection(connStr))
            {
                connection.Open();

                string sql = "SELECT * FROM Account_Plan_date(@sub_date, @plan_id)";

                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@sub_date", subDate);
                    command.Parameters.AddWithValue("@plan_id", planId);

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