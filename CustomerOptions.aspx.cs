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
            // Add your code here
        }

        protected void Login(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ViewConsumption(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void DisplayUnsubscribedPlans(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ShowActivePlanUsage(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ShowCashbackTransactions(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ViewActiveBenefits(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ShowUnresolvedTickets(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ShowHighestValueVoucher(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void DisplayRemainingPaymentAmount(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void DisplayExtraPaymentAmount(object sender, EventArgs e)
        {
            // Add your code here
        }

        protected void ShowTop10Payments(object sender, EventArgs e)
        {
            // Add your code here
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