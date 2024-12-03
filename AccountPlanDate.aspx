<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountPlanDate.aspx.cs" Inherits="Telecom_Web_App.AccountPlanDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <title>Account Plan Date</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Check Accounts</h2>
            <asp:Label ID="lblPlanId" runat="server" Text="Plan ID:"></asp:Label>
            <asp:TextBox ID="txtPlanId" runat="server"></asp:TextBox>
            <asp:Label ID="lblTime" runat="server" Text="Date:"></asp:Label>
            <asp:TextBox ID="txtTime" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Check" OnClick="checkClick" />
        </div>
    </form>
</body>
</html>
