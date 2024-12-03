<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cashback_wallet_planID.aspx.cs" Inherits="Telecom_Web_App.Cashback_wallet_planID" %>

<head runat="server">
    <title></title>
</head>

<html xmlns="http://www.w3.org/1999/xhtml"><body><form id="form1" runat="server">
        <div>
            <h2>Wallet & Plane specification</h2>
            <asp:Label ID="lblWalletId" runat="server" Text="Wallet ID: "></asp:Label>
            <asp:TextBox ID="WalletId" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblPlanId" runat="server" Text=" Plan ID: "></asp:Label>
            <asp:TextBox ID="PlanId" runat="server" ></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="RetriveCashback" />
        </div>
    </form>
</body>
</html>
