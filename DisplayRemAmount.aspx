﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayRemAmount.aspx.cs" Inherits="Telecom_Web_App.DisplayRemAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-label">Enter Name of Plan</div>
        <div>
            <asp:TextBox ID="txtplanName" runat="server" placeholder="Plan name" class="input-field"></asp:TextBox>
            <asp:Button ID="lastRemainingAmount" runat="server" Text="Check Amount" OnClick="lastRemainingAmountClick" class="submit-button"/>
        </div>
    </form>
</body>
</html>