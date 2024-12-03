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
    public partial class ShowTopPayments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String mobileNo = Session["mobileNo"].ToString();
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            if (!IsPostBack)
            {
                DataTable data = new DataTable();
                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();

                    using (SqlCommand command2 = new SqlCommand("Exec Top_Successful_Payments @mobile_num = @mobileNo", connection))
                    {
                        command2.Parameters.AddWithValue("@mobileNo", mobileNo);
                        using (SqlDataReader reader = command2.ExecuteReader())
                        {
                            data.Load(reader);
                        }
                    }
                }
                Session["GridData"] = data;
                Response.Redirect("/Result.aspx");
            }
        }
    }
}