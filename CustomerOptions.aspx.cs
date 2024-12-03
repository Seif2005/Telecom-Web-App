using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Telecom_Web_App.Helpers;

namespace Telecom_Web_App
{
    public partial class CustomerOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ViewServicePlans(object sender, EventArgs e)
        {
            DataTable data = GetData("Select * from allServicePlans");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void Login(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }

        protected void ViewConsumption(object sender, EventArgs e)
        {
            Response.Redirect("/Consumption.aspx");
        }

        protected void DisplayUnsubscribedPlans(object sender, EventArgs e)
        {
            Response.Redirect("/DisplayUnSubPlans.aspx");
        }

        protected void ShowActivePlanUsage(object sender, EventArgs e)
        {
            string mobileNumber = Session["mobileNo"].ToString();

            DataTable data = GetData($"SELECT * FROM Usage_Plan_CurrentMonth('{mobileNumber}')");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void ShowCashbackTransactions(object sender, EventArgs e)
        {
            Response.Redirect("Cashback_Wallet_Customer.aspx");
        }
        //mazen start
        protected void ViewActiveBenefits(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM allBenefits");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void ShowUnresolvedTickets(object sender, EventArgs e)
        {
            Response.Redirect("/UnresolvedTickets.aspx");
        }

        protected void ShowHighestValueVoucher(object sender, EventArgs e)
        {
            Response.Redirect("/HighestValueVoucher.aspx");
        }

        protected void DisplayRemainingPaymentAmount(object sender, EventArgs e)
        {
            Response.Redirect("/DisplayRemAmount.aspx");
        }

        protected void DisplayExtraPaymentAmount(object sender, EventArgs e)
        {
            Response.Redirect("/ExtraAmount.aspx");
        }

        protected void ShowTop10Payments(object sender, EventArgs e)
        {
            Response.Redirect("/ShowTopPayments.aspx");
        }

        protected void ViewShops(object sender, EventArgs e)
        {
            DataTable data = GetData("SELECT * FROM allShops");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void ShowSubscribedPlans(object sender, EventArgs e)
        {
            string mobileNumber = Session["mobileNo"].ToString();
            if (string.IsNullOrEmpty(mobileNumber))
            {
                Response.Write("Mobile number is required.");
                return;
            }
            DataTable data = GetData($"SELECT * FROM Subscribed_plans_5_Months('{mobileNumber}')");
            Session["GridData"] = data;
            Response.Redirect("/Result.aspx");
        }

        protected void RenewSubscription(object sender, EventArgs e)
        {
            Response.Redirect("RenewSubscription.aspx");
        }

        protected void GetCashbackAmount(object sender, EventArgs e)
        {
            Response.Redirect("GetCashbackAmount.aspx");
        }

        protected void RechargeBalance(object sender, EventArgs e)
        {
            Response.Redirect("RechargeBalance.aspx");
        }

        protected void RedeemVoucher(object sender, EventArgs e)
        {
            Response.Redirect("RedeemVoucher.aspx");
        }
    }
}