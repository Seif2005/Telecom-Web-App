﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SmsOffersByAccount.aspx.cs" Inherits="Telecom_Web_App.SmsOffersByAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>SMS Check</h2>
            <asp:Label ID="lblUsername" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Check SMS" OnClick="CheckSMS" />
        </div>
    </form>
</body>
</html>