<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wallet_Using_MobileNo.aspx.cs" Inherits="Telecom_Web_App.Wallet_Using_MobileNo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Check Wallet</h2>
            <asp:Label ID="lblmobileNo" runat="server" Text="Mobile Number: "></asp:Label>
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Check" OnClick="checkWallet" />
        </div>
    </form>
</body>
</html>
