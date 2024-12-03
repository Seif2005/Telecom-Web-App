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
    public partial class RechargeBalance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mobileNumber = Session["mobileNo"]?.ToString();

            if (string.IsNullOrEmpty(mobileNumber))
            {
                lblResult.Text = "Invalid Mobile Number.";
                return;
            }
            else
            {
                lblMobileNumber.Text = mobileNumber;
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string mobileNumber = Session["mobileNo"]?.ToString();
            decimal amount;
            string paymentMethod = ddlPaymentMethod.SelectedValue;


            if (string.IsNullOrEmpty(mobileNumber))
            {
                lblResult.Text = "Invalid Mobile Number.";
                return;
            }
            else
            {
                lblMobileNumber.Text = mobileNumber;
            }

            if (!decimal.TryParse(txtAmount.Text, out amount) || amount <= 0)
            {
                lblResult.Text = "Invalid Amount.";
                return;
            }

            if (string.IsNullOrEmpty(paymentMethod))
            {
                lblResult.Text = "Please select a payment method.";
                return;
            }

            string result = InitiateBalancePayment(mobileNumber, amount, paymentMethod);

            lblResult.Text = result;
        }

        private string InitiateBalancePayment(string mobileNumber, decimal amount, string paymentMethod)
        {

            string connString = WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("Initiate_balance_payment", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@mobile_num", mobileNumber);
                    cmd.Parameters.AddWithValue("@amount", amount);
                    cmd.Parameters.AddWithValue("@payment_method", paymentMethod);

                    conn.Open();
                    cmd.ExecuteNonQuery();

                    return "Balance recharged successfully.";
                }
            }
        }
    }
}