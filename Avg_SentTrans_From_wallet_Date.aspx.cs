using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telecom_Web_App
{
    public partial class Avg_SentTrans_From_wallet_Date : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Get_Average_Sent_Transactions(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            if (string.IsNullOrEmpty(txtWalletId.Text) || string.IsNullOrEmpty(txtStartTime.Text)|| string.IsNullOrEmpty(txtEndTime.Text))
            {
                Response.Write("please Enter a wallet id ,a Start Date and a End Date");
            }
            else
            {
                int Wallet_ID = int.Parse(txtWalletId.Text);
                String Start_Date = txtStartTime.Text;
                String End_Date = txtEndTime.Text;
                using (SqlConnection conn = new SqlConnection(connStr)) 
                {
                    conn.Open();
                    using (SqlCommand command = new SqlCommand("SELECT dbo.Wallet_Transfer_Amount(@walletID , @start_date , @end_date )", conn))
                    {
                        
                        command.Parameters.AddWithValue("@walletID ", Wallet_ID);
                        command.Parameters.AddWithValue("@start_date", Start_Date);
                        command.Parameters.AddWithValue("@end_date", End_Date);
                        object result = command.ExecuteScalar();
                        if (result.ToString() != "")
                        {
                            int TransferAmount = int.Parse(result.ToString());
                            Response.Write("the Transfer Amount is " + TransferAmount.ToString());
                        }
                        else
                        {
                            Response.Write("please Enter a Valid wallet id and a Plan id");
                        }
                    }
                }

            }
        }
    }
}