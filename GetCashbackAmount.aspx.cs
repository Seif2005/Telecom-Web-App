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
    public partial class GetCashbackAmount : System.Web.UI.Page
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
                    LiteralError.Text = "<div style='color: red;'>Mobile number not available</div>";
                    //Response.Write("Mobile number not available.");
                }
            }
        }
        protected void btnGetCashback_Click(object sender, EventArgs e)
        {
            string mobileNumber = Session["mobileNo"]?.ToString();
            int paymentId;
            int benefitId;

            if (string.IsNullOrEmpty(mobileNumber))
            {
                //lblResult.Text = "Mobile number is required.";
                LiteralError.Text = "<div style='color: red;'>Mobile number is required</div>";
                return;
            }

            if (!int.TryParse(txtPaymentId.Text, out paymentId) || paymentId <= 0)
            {
                //lblResult.Text = "Invalid Payment ID.";
                LiteralError.Text = "<div style='color: red;'>Invalid Payment ID</div>";
                return;
            }

            if (!int.TryParse(txtBenefitId.Text, out benefitId) || benefitId <= 0)
            {
                //lblResult.Text = "Invalid Benefit ID.";
                LiteralError.Text = "<div style='color: red;'>Invalid Benefit ID</div>";
                return;
            }
            string query = @"
                        SELECT paymentID 
                        FROM Payment 
                        WHERE paymentID = @paymentId 
                          AND mobileNo = @mobileNo
                          AND status = 'successful'";

            DataTable paymentData = GetID(query,
                new SqlParameter("@paymentId", paymentId),
                new SqlParameter("@mobileNo", mobileNumber));

            if (paymentData.Rows.Count == 0)
            {
                //lblResult.Text = "Invalid Payment ID for this mobile number.";
                LiteralError.Text = "<div style='color: red;'>Invalid Payment ID for this mobile number</div>";
                return;
            }
            string query2 = @"
                        SELECT benefitID 
                        FROM Benefits 
                        WHERE benefitID = @benefitID and current_timestamp<= validity_date
                          AND mobileNo = @mobileNo
                          AND status = 'Active'";

            DataTable paymentData2 = GetID(query2,
                new SqlParameter("@benefitID", benefitId),
                new SqlParameter("@mobileNo", mobileNumber));

            if (paymentData2.Rows.Count == 0)
            {
                //lblResult.Text = "Invalid benefit ID for this mobile number.";
                LiteralError.Text = "<div style='color: red;'>Invalid benefit ID for this mobile number</div>";
                return;
            }


            string result = GetCashback(mobileNumber, paymentId, benefitId);

            //lblResult.Text = result;
            LiteralError.Text = "<div style='color: green;'>Cashback has been successfully calculated and added to the wallet</div>";
        }

        private string GetCashback(string mobileNumber, int paymentId, int benefitId)
        {

            string connString = WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("Payment_wallet_cashback", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.AddWithValue("@mobile_num", mobileNumber);
                    cmd.Parameters.AddWithValue("@payment_id", paymentId);
                    cmd.Parameters.AddWithValue("@benefit_id", benefitId);

                    conn.Open();

                    cmd.ExecuteNonQuery();

                    return "Cashback has been successfully calculated and added to the wallet.";
                }
            }



        }
        public static DataTable GetID(string query, params SqlParameter[] parameters)
        {
            string connString = WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.CommandType = CommandType.Text;


                    if (parameters != null)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }

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