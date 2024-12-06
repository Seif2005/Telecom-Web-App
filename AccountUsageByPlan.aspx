<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountUsageByPlan.aspx.cs" Inherits="Telecom_Web_App.AccountUsageByPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Total Usage</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Total Usage</h2>
            <asp:Label ID="lblMobileNo" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileno" runat="server"></asp:TextBox>
            <asp:Label ID="lblTime" runat="server" Text=" From Date:"></asp:Label>
            <asp:TextBox ID="txtTime" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Check" OnClick="checkClick" />
        </div>
    </form>
</body>
</html>
