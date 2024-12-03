﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountUsageByPlan.aspx.cs" Inherits="Telecom_Web_App.AccountUsageByPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Total Usage</h2>
            <asp:Label ID="lblMobileNo" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileno" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblTime" runat="server" Text=" From Date:"></asp:Label>
            <asp:TextBox ID="txtTime" runat="server" TextMode="Date"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Check" OnClick="checkClick" />
        </div>
    </form>
</body>
</html>