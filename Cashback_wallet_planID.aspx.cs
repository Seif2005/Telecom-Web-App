using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Telecom_Web_App
{
    public partial class Cashback_wallet_planID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RetriveCashback(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            if (string.IsNullOrEmpty(WalletId.Text) || string.IsNullOrEmpty(PlanId.Text))
            {
                Response.Write("please Enter a wallet id and a Plan id");
            }
            else
            {
                int Wallet_ID = int.Parse(WalletId.Text);
                int plan_ID = int.Parse(PlanId.Text);
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();
                    using (SqlCommand command = new SqlCommand("SELECT dbo.Wallet_Cashback_Amount(@walletID, @planID)", conn))
                    {
                        command.Parameters.AddWithValue("@walletID ", Wallet_ID);
                        command.Parameters.AddWithValue("@planID", plan_ID);

                        object result = command.ExecuteScalar();
                        if (result.ToString() != "")
                        {
                            int cashbackAmount = int.Parse(result.ToString());
                            Response.Write("the Cashback Amount is " + cashbackAmount.ToString());
                        }
                        else {
                            Response.Write("please Enter a Valid wallet id and a Plan id");
                        }
                    }

                }
            }
            
        }
    }
}