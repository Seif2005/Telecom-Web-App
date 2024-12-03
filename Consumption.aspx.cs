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
    public partial class Consumption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void checkClick(object sender, EventArgs e)
        {
            string planName = txtPlanName.Text;
            string startDate = txtTime.Text;
            string endDate = TextBox1.Text;

            DataTable Data = new DataTable();
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();

            using (SqlConnection connection = new SqlConnection(connStr))
            {
                connection.Open();

                string sql = "SELECT * FROM Consumption(@planName, @startDate, @endDate)";

                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@planName", planName);
                    command.Parameters.AddWithValue("@startDate", startDate);
                    command.Parameters.AddWithValue("@endDate", endDate);


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