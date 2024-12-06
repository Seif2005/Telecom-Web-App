﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cashback_wallet_planID.aspx.cs" Inherits="Telecom_Web_App.Cashback_wallet_planID" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Cashback Wallet</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="stylesheet" href="styles2.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <script type="text/javascript">
        function showPopup(message) {
            alert(message);
        }
    </script>

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
    <form id="form1" runat="server">
        <div>
            <h2>Wallet & Plan specification</h2>
            <asp:Label ID="lblWalletId" runat="server" Text="Wallet ID: "></asp:Label>
            <asp:TextBox ID="WalletId" runat="server"></asp:TextBox>
            <asp:Label ID="lblPlanId" runat="server" Text=" Plan ID: "></asp:Label>
            <asp:TextBox ID="PlanId" runat="server" ></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="RetriveCashback" />
        </div>
    </form>
    <asp:Literal ID="LiteralError" runat="server"></asp:Literal>
</body>
</html>
