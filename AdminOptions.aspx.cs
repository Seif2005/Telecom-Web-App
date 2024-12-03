using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telecom_Web_App
{
    public partial class AdminOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void All_customers_wallets(object sender, EventArgs e)
        {
            Response.Redirect("/Wallets_Customers.aspx");

        }
        protected void Customer_Profile_Active_Account(object sender, EventArgs e)
        {
            Response.Redirect("/CustomerProfileActive.aspx");

        }

        //2.2 h
        protected void Eshop_Redeem_Vouchers(object sender, EventArgs e)
        {

        }
        // 2.2 d
        protected void Account_Payments(object sender, EventArgs e)
        {

        }
        //2.2j
        protected void Num_Cashback_walletId(object sender, EventArgs e)
        {

        }

        // 2.3 f
        protected void Num_Accept_Payment_Trans(object sender, EventArgs e)
        {

        }

        //2.3 g
        protected void Cashback_wallet_planID(object sender, EventArgs e)
        {

        }

        //2.3 h
        protected void Avg_SentTrans_From_wallet_Date(object sender, EventArgs e)
        {

        }

        //2.3 i
        protected void Wallet_Using_MobileNo(object sender, EventArgs e)
        {

        }
        //new part
        protected void ViewStoresAndVouchers(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ResolvedTicketsDetails(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void CustomerAccountsAndPlans(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ListAccountsByPlanAndDate(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void AccountUsageByPlan(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void RemovePlanBenefits(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void SmsOffersByAccount(object sender, EventArgs e)
        {
            // Add your code here
        }

    }
}