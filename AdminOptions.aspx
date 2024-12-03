<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOptions.aspx.cs" Inherits="Telecom_Web_App.AdminOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Button ID="Button1" runat="server" OnClick="All_customers_wallets" Text="All customers Wallets" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button2" runat="server" Text="All E-shop and Redeemed voucher" Width="441px" OnClick="Eshop_Redeem_Vouchers" Height="36px" />
            <br />
        <asp:Button ID="Button3" runat="server" OnClick="Account_Payments" Text="Accounts payments" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button4" runat="server" OnClick="Num_Cashback_walletId" Text="Number of cashback per Wallet ID" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button5" runat="server" OnClick="Num_Accept_Payment_Trans" Text="Number Of Accepted Payment Transactions" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button6" runat="server" OnClick="Cashback_wallet_planID" Text="Amount Of Cashback To Wallet (Using Plan Id)" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button7" runat="server" OnClick="Avg_SentTrans_From_wallet_Date" Text="Average Sent Transaction From a certain Wallet (in a Date)" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button8" runat="server" OnClick="Wallet_Using_MobileNo" Text="Get Wallet With Mobile Number" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button17" runat="server" Text="Update Points" OnClick="UpdatePoints" Height="36px" Width="441px"/> <br />
            <br />
            <br />
        <asp:Button ID="Button9" runat="server" OnClick="Customer_Profile_Active_Account" Text="Customer Profiles Active Accounts" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button10" runat="server" OnClick="ViewStoresAndVouchers" Text="View Physical Stores & Vouchers" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button11" runat="server" OnClick="ResolvedTicketsDetails" Text="Resolved Tickets Details" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button12" runat="server" OnClick="CustomerAccountsAndPlans" Text="Customer Accounts & Plans" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button13" runat="server" OnClick="ListAccountsByPlanAndDate" Text="List Accounts by Plan & Date" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button14" runat="server" OnClick="AccountUsageByPlan" Text="Account Usage by Plan" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button15" runat="server" OnClick="RemovePlanBenefits" Text="Remove Plan Benefits" Height="36px" Width="441px" />
            <br />
        <asp:Button ID="Button16" runat="server" OnClick="SmsOffersByAccount" Text="SMS Offers by Account" Height="36px" Width="441px" />
            <br />

        </div>
 
    </form>
</body>
</html>
