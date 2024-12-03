<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOptions.aspx.cs" Inherits="Telecom_Web_App.CustomerOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Options</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button20" runat="server" OnClick="ViewServicePlans" Text="View Service Plans" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button21" runat="server" OnClick="Login" Text="Login" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button22" runat="server" OnClick="ViewConsumption" Text="View Consumption" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button23" runat="server" OnClick="DisplayUnsubscribedPlans" Text="Display Unsubscribed Plans" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button24" runat="server" OnClick="ShowActivePlanUsage" Text="Show Active Plan Usage" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button25" runat="server" OnClick="ShowCashbackTransactions" Text="Show Cashback Transactions" Height="36px" Width="441px" />
            <br />
            <br />
            <asp:Button ID="Button26" runat="server" OnClick="ViewActiveBenefits" Text="View Active Benefits" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button27" runat="server" OnClick="ShowUnresolvedTickets" Text="Show Unresolved Tickets" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button28" runat="server" OnClick="ShowHighestValueVoucher" Text="Show Highest Value Voucher" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button29" runat="server" OnClick="DisplayRemainingPaymentAmount" Text="Display Remaining Payment Amount" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button30" runat="server" OnClick="DisplayExtraPaymentAmount" Text="Display Extra Payment Amount" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button31" runat="server" OnClick="ShowTop10Payments" Text="Show Top 10 Payments" Height="36px" Width="441px" />
            <br />
            <br />
            <asp:Button ID="Button32" runat="server" OnClick="ViewShops" Text="View Shops" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button33" runat="server" OnClick="ShowSubscribedPlans" Text="Show Subscribed Plans" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button34" runat="server" OnClick="RenewSubscription" Text="Renew Subscription" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button35" runat="server" OnClick="GetCashbackAmount" Text="Get Cashback Amount" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button36" runat="server" OnClick="RechargeBalance" Text="Recharge Balance" Height="36px" Width="441px" />
            <br />
            <asp:Button ID="Button37" runat="server" OnClick="RedeemVoucher" Text="Redeem Voucher" Height="36px" Width="441px" />
            <br />
        </div>
    </form>
</body>
</html>
