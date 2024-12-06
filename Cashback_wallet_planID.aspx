<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cashback_wallet_planID.aspx.cs" Inherits="Telecom_Web_App.Cashback_wallet_planID" %>

<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Cashback Wallet</title>
</head>

<html xmlns="http://www.w3.org/1999/xhtml"><body><form id="form1" runat="server">
        <div>
            <h2>Wallet & Plan specification</h2>
            <asp:Label ID="lblWalletId" runat="server" Text="Wallet ID: "></asp:Label>
            <asp:TextBox ID="WalletId" runat="server"></asp:TextBox>
            <asp:Label ID="lblPlanId" runat="server" Text=" Plan ID: "></asp:Label>
            <asp:TextBox ID="PlanId" runat="server" ></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="RetriveCashback" />
        </div>
    </form>
</body>
</html>
