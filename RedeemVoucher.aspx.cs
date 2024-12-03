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
    public partial class RedeemVoucher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string mobileNumber = Session["mobileNo"].ToString();

                if (!string.IsNullOrEmpty(mobileNumber))
                {
                    lblMobileNumber.Text = mobileNumber;
                }
                else
                {
                    Response.Write("Mobile number not available.");
                    btnRedeem.Enabled = false;
                }

            }
        }
        protected void btnRedeem_Click(object sender, EventArgs e)
        {
            string mobileNumber = Session["mobileNo"]?.ToString();
            int voucherId;

            if (!int.TryParse(txtVoucherId.Text, out voucherId) || voucherId <= 0)
            {
               Response.Write( "Invalid voucher ID. Please try again.");
               
            }


            string resultMessage = RedeemVoucherPoints(mobileNumber, voucherId);


            lblResult.Text = resultMessage;
        }
        private string RedeemVoucherPoints(string mobileNumber, int voucherId)
        {
                string connString = WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("Redeem_voucher_points", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@mobile_num", mobileNumber);
                        cmd.Parameters.AddWithValue("@voucher_id", voucherId);

                        int Rows_affected = int.Parse(cmd.ExecuteNonQuery().ToString());
                    Response.Write(Rows_affected);
                        if (Rows_affected == -1)
                        {
                            return "You do not have enough points to redeem this voucher.";
                        }
                        else
                        {
                            return "Voucher redeemed successfully.";
                        }


                    }
                   
                }
            
            
            
        }

    }
}