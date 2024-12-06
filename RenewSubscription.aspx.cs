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
    public partial class RenewSubscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string mobileNumber = Session["mobileNo"]?.ToString();
                if (!string.IsNullOrEmpty(mobileNumber))
                {
                    lblMobileNumber.Text = mobileNumber;
                }
                else
                {
                    //Response.Write("Mobile number not available.");
                    LiteralError.Text = "<div style='color: red;'>Mobile number not available</div>";
                }
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string mobileNumber = Session["mobileNo"].ToString();
            String plan = txtPlanId.Text;
            String amountValue = txtAmount.Text;
            if (mobileNumber == "" || plan == "" || amountValue == "")
            {
                //Response.Write("Invalid input. Please try again.");
                LiteralError.Text = "<div style='color: red;'>Invalid input</div>";
                return;
            }
            try
            {

                int planId = int.Parse(txtPlanId.Text);
                decimal amount = decimal.Parse(txtAmount.Text);

                string paymentMethod = dropDPaymentMethod.SelectedValue.ToString();

                if (string.IsNullOrEmpty(mobileNumber) || planId <= 0 || amount <= 0 || string.IsNullOrEmpty(paymentMethod))
                {
                    //Response.Write("Invalid input. Please try again.");
                    LiteralError.Text = "<div style='color: red;'>Invalid input</div>";
                    return;
                }

                DataTable data = CallStoredProcedure(mobileNumber, amount, paymentMethod, planId);

                if (data != null)
                {
                    Session["GridData"] = data;
                    Response.Write("Renewed successfully");
                    txtAmount.Text = "";
                    txtPlanId.Text = "";
                }
                else
                {
                    //Response.Write("Failed to renew the subscription.");
                    LiteralError.Text = "<div style='color: red;'>Failed to renew the subscription</div>";
                }
            }
            catch
            {
                //Response.Write("Please Enter all data");
                LiteralError.Text = "<div style='color: red;'>Please Enter all data</div>";
            }
        }
        private DataTable CallStoredProcedure(string mobileNumber, decimal amount, string paymentMethod, int planId)
        {
            string connString = WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("Initiate_plan_payment", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@mobile_num", mobileNumber);
                    cmd.Parameters.AddWithValue("@amount", amount);
                    cmd.Parameters.AddWithValue("@payment_method", paymentMethod);
                    cmd.Parameters.AddWithValue("@plan_id", planId);


                    conn.Open();

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable result = new DataTable();
                        adapter.Fill(result);
                        return result;
                    }
                }
            }

        }

    }
}