using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Telecom_Web_App.Helpers;

namespace Telecom_Web_App
{
    public partial class AdminOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void All_customers_wallets(object sender, EventArgs e)
        {
            DataTable data = GetData("Select * from CustomerWallet");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        //2.2 h
        protected void Eshop_Redeem_Vouchers(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM E_shopVouchers");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }
        // 2.2 d
        protected void Account_Payments(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM AccountPayments");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }
        //2.2j
        protected void Num_Cashback_walletId(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM Num_of_cashback");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        // 2.3 f
        protected void Num_Accept_Payment_Trans(object sender, EventArgs e)
        {
            Response.Redirect("Num_Accept_Payment_Trans.aspx");
        }

        //2.3 g
        protected void Cashback_wallet_planID(object sender, EventArgs e)
        {
            Response.Redirect("Cashback_wallet_planID.aspx");
        }

        //2.3 h
        protected void Avg_SentTrans_From_wallet_Date(object sender, EventArgs e)
        {
            Response.Redirect("Avg_SentTrans_From_wallet_Date.aspx");
        }

        //2.3 i
        protected void Wallet_Using_MobileNo(object sender, EventArgs e)
        {
            Response.Redirect("Wallet_Using_MobileNo.aspx");
        }

        protected void UpdatePoints(object sender, EventArgs e)
        {
            Response.Redirect("UpdatePoints.aspx");
        }

        //new part
        protected void Customer_Profile_Active_Account(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM allCustomerAccounts");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void ViewStoresAndVouchers(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM PhysicalStoreVouchers");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void ResolvedTicketsDetails(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM allResolvedTickets");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void CustomerAccountsAndPlans(object sender, EventArgs e)
        {
            DataTable data = GetData("EXEC Account_Plan ");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void ListAccountsByPlanAndDate(object sender, EventArgs e)
        {
            Response.Redirect("AccountPlanDate.aspx");
        }

        protected void AccountUsageByPlan(object sender, EventArgs e)
        {
            Response.Redirect("AccountUsageByPlan.aspx");
        }

        protected void RemovePlanBenefits(object sender, EventArgs e)
        {
            Response.Redirect("RemovePlanBenefits.aspx");
        }

        protected void SmsOffersByAccount(object sender, EventArgs e)
        {
            Response.Redirect("SmsOffersByAccount.aspx");
        }

    }
}