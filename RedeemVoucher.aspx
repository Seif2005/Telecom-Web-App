<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedeemVoucher.aspx.cs" Inherits="Telecom_Web_App.RedeemVoucher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Redeem Voucher</title>
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
    <form id="form1" runat="server">
        <div>
            
            <h2>Redeem Voucher</h2>
            <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number: "></asp:Label>

            <label for="txtVoucherId">Enter Voucher ID:</label>
            <asp:TextBox ID="txtVoucherId" runat="server" CssClass="form-control" />
            <asp:Button ID="btnRedeem" runat="server" Text="Redeem Voucher" OnClick="btnRedeem_Click" CssClass="btn btn-primary" />

            <asp:Label ID="lblResult" runat="server" ForeColor="Red" />
        </div>
    </form>
    <asp:Literal ID="LiteralError" runat="server"></asp:Literal>
</body>
</html>
