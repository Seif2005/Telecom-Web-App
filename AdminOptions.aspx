<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOptions.aspx.cs" Inherits="Telecom_Web_App.AdminOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Telecom Co. - Admin Options</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="stylesheet" href="styles2.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    

    <style>
        .navbar {
            width: 100%;
            margin: 0;
            border-radius: 0;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="GoHome.aspx">Telecom26 Co.</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="GoHome.aspx">Home</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/Login.aspx"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
        </div>
    </nav>
    <h1 class="title">Features</h1>

    <form id="form1" runat="server">
        <div class="grid-container">
            <asp:LinkButton ID="Button1" class="grid-item" runat="server" OnClick="All_customers_wallets" >
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">All customers Wallets</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button2" class="grid-item" runat="server" OnClick="Eshop_Redeem_Vouchers" >
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">All E-shop and Redeemed voucher</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button3" class="grid-item" runat="server" OnClick="Account_Payments" >
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Accounts payments</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button4" class="grid-item" runat="server" OnClick="Num_Cashback_walletId" >
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Number of cashback per Wallet ID</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button5" class="grid-item" runat="server" OnClick="Num_Accept_Payment_Trans" >
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Number Of Accepted Payment Transactions</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button6" class="grid-item" runat="server" OnClick="Cashback_wallet_planID" >
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Amount Of Cashback To Wallet (Using Plan Id)</span>
                </span>
            </asp:LinkButton>
        </div>

        <div class="grid-container">
    <asp:LinkButton ID="Button7" class="grid-item" runat="server" OnClick="Avg_SentTrans_From_wallet_Date" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Average Sent Transaction From a certain Wallet (in a Date)</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button8" class="grid-item" runat="server" OnClick="Wallet_Using_MobileNo" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Get Wallet With Mobile Number</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button17" class="grid-item" runat="server" OnClick="UpdatePoints">
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Update Points</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button9" class="grid-item" runat="server" OnClick="Customer_Profile_Active_Account" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Customer Profiles Active Accounts</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button10" class="grid-item" runat="server" OnClick="ViewStoresAndVouchers" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">View Physical Stores & Vouchers</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button11" class="grid-item" runat="server" OnClick="ResolvedTicketsDetails" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Resolved Tickets Details</span>
        </span>
    </asp:LinkButton>
</div>

<div class="grid-container">
    <asp:LinkButton ID="Button12" class="grid-item" runat="server" OnClick="CustomerAccountsAndPlans" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Customer Accounts & Plans</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button13" class="grid-item" runat="server" OnClick="ListAccountsByPlanAndDate" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">List Accounts by Plan & Date</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button14" class="grid-item" runat="server" OnClick="AccountUsageByPlan" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Account Usage by Plan</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button15" class="grid-item" runat="server" OnClick="RemovePlanBenefits" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">Remove Plan Benefits</span>
        </span>
    </asp:LinkButton>
    <asp:LinkButton ID="Button16" class="grid-item" runat="server" OnClick="SmsOffersByAccount" >
        <span class="icon-text">
            <i class="fas fa-bolt"></i>
            <span class="button-text">SMS Offers by Account</span>
        </span>
    </asp:LinkButton>
</div>
    </form>
</body>
</html>
