﻿using System;
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
                    //Response.Write("Mobile number not available.");
                    LiteralError.Text = "<div style='color: red;'>Mobile number not available</div>";
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
                //Response.Write("Invalid voucher ID. Please try again.");
                LiteralError.Text = "<div style='color: red;'>Invalid voucher ID. Please try again</div>";

            }
            bool result = RedeemVoucherPoints(mobileNumber, voucherId);
            //lblResult.Text = result;
            if (result)
            {
                LiteralError.Text = "<div style='color: red;'>Voucher redeemed successfully</div>";
            }
            else
            {
                LiteralError.Text = "<div style='color: red;'>You do not have enough points to redeem this voucher or wrong voucher ID</div>";
            }
            
        }
        private bool RedeemVoucherPoints(string mobileNumber, int voucherId)
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
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }

            }
        }
    }
}