<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetCashbackAmount.aspx.cs" Inherits="Telecom_Web_App.GetCashbackAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <label>Mobile Number:</label>
             <asp:Label ID="lblMobileNumber" runat="server" Text=""></asp:Label><br /><br />
            <br />
            <asp:Label ID="lblPaymentId" runat="server" Text="Payment ID:" />
            <asp:TextBox ID="txtPaymentId" runat="server" />
            <br />
            <asp:Label ID="lblBenefitId" runat="server" Text="Benefit ID:" />
            <asp:TextBox ID="txtBenefitId" runat="server" />
            <br />
            <asp:Button ID="btnGetCashback" runat="server" Text="Get Cashback" OnClick="btnGetCashback_Click" />
            <br />
            <asp:Label ID="lblResult" runat="server" />
        </div>
    </form>
</body>
</html>