<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetCashbackAmount.aspx.cs" Inherits="Telecom_Web_App.GetCashbackAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <label>Mobile Number:</label>
             <asp:Label ID="lblMobileNumber" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblPaymentId" runat="server" Text="Payment ID:" />
            <asp:TextBox ID="txtPaymentId" runat="server" />
            <asp:Label ID="lblBenefitId" runat="server" Text="Benefit ID:" />
            <asp:TextBox ID="txtBenefitId" runat="server" />
            <asp:Button ID="btnGetCashback" runat="server" Text="Get Cashback" OnClick="btnGetCashback_Click" />
            <asp:Label ID="lblResult" runat="server" />
        </div>
    </form>
</body>
</html>