﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consumption.aspx.cs" Inherits="Telecom_Web_App.Consumption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Consumption</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Your Consumption</h2>
            <asp:Label ID="lblPlanName" runat="server" Text="Plan Name:"></asp:Label>
            <asp:TextBox ID="txtPlanName" runat="server"></asp:TextBox>
            <asp:Label ID="lblTime" runat="server" Text="Start Date:"></asp:Label>
            <asp:TextBox ID="txtTime" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="End Date:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Show Consumption" OnClick="checkClick" />
        </div>
    </form>
</body>
</html>
