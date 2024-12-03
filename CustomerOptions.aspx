<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOptions.aspx.cs" Inherits="Telecom_Web_App.CustomerOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        /*    height: 100vh;*/
            background-color: #f4f4f9;
            position: relative;
        }

        /* Logo at the top left corner */
        .logo {
            position: absolute;
            top: 20px;
            left: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        /* Title style */
        .title {
            font-size: 48px;
            color: #333;
            margin-top: 80px;
            text-align: center;
            font-weight: bold;
        }

        /* Grid container */
        .grid-container {
            display: grid;
            grid-template-columns: repeat(3, 200px);
            grid-template-rows: repeat(2, 200px);
            gap: 30px;
            margin-top: 30px;
        }

        /* Grid items (buttons) */
        .grid-item {
            width: 100%;
            height: 100%;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            flex-direction: column;
            transition: background-color 0.3s, transform 0.3s;
            text-decoration: none;
        }

        /* Icon and text container */
        .icon-text {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        /* Style for the icon */
        .grid-item i {
            font-size: 40px;
            margin-bottom: 10px;
        }

        /* Style for the text */
        .button-text {
            font-size: 14px;
            text-align: center;
        }

        /* Hover effect for buttons */
        .grid-item:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        /* Active effect for buttons */
        .grid-item:active {
            background-color: #004085;
            transform: scale(1);
        }
    </style>
    <title>Customer Options</title>
</head>
<body>
    <div class="logo">Telecom26 Co.</div>
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
