<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOptions.aspx.cs" Inherits="Telecom_Web_App.CustomerOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="stylesheet" href="styles2.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Customer Options</title>    
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

        a:focus, a:hover {
            color: white !important;
            text-decoration: none !important;
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
            <asp:LinkButton ID="Button20" class="grid-item" runat="server" OnClick="ViewServicePlans">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">View Service Plans</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button21" class="grid-item" runat="server" OnClick="Login">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Login</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button22" class="grid-item" runat="server" OnClick="ViewConsumption">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">View Consumption</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button23" class="grid-item" runat="server" OnClick="DisplayUnsubscribedPlans">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Display Unsubscribed Plans</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button24" class="grid-item" runat="server" OnClick="ShowActivePlanUsage">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Show Active Plan Usage</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button25" class="grid-item" runat="server" OnClick="ShowCashbackTransactions">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Show Cashback Transactions</span>
                </span>
            </asp:LinkButton>
        </div>
        <br />
        <br />

        <div class="grid-container">
            <asp:LinkButton ID="Button26" class="grid-item" runat="server" OnClick="ViewActiveBenefits">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">View Active Benefits</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button27" class="grid-item" runat="server" OnClick="ShowUnresolvedTickets">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Show Unresolved Ticketss</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button28" class="grid-item" runat="server" OnClick="ShowHighestValueVoucher">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Show Highest Value Voucher</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button29" class="grid-item" runat="server" OnClick="DisplayRemainingPaymentAmount">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Display Remaining Payment Amount</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button30" class="grid-item" runat="server" OnClick="DisplayExtraPaymentAmount">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Display Extra Payment Amount</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button31" class="grid-item" runat="server" OnClick="ShowTop10Payments">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Show Top 10 Payments</span>
                </span>
            </asp:LinkButton>
        </div>
        <br />
        <br />

        <div class="grid-container">
            <asp:LinkButton ID="Button32" class="grid-item" runat="server" OnClick="ViewShops">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">View Shops</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button33" class="grid-item" runat="server" OnClick="ShowSubscribedPlans">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Show Subscribed Plans</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button34" class="grid-item" runat="server" OnClick="RenewSubscription">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Renew Subscription</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button35" class="grid-item" runat="server" OnClick="GetCashbackAmount">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Get Cashback Amount</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button36" class="grid-item" runat="server" OnClick="RechargeBalance">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Recharge Balance</span>
                </span>
            </asp:LinkButton>
            <asp:LinkButton ID="Button37" class="grid-item" runat="server" OnClick="RedeemVoucher">
                <span class="icon-text">
                    <i class="fas fa-bolt"></i>
                    <span class="button-text">Redeem Voucher</span>
                </span>
            </asp:LinkButton>
        </div>
    </form>
</body>
</html>
