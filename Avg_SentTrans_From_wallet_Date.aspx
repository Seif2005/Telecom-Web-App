<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Avg_SentTrans_From_wallet_Date.aspx.cs" Inherits="Telecom_Web_App.Avg_SentTrans_From_wallet_Date" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Transactions Average </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Wallet Id and date Specification </h2>
            <asp:Label ID="lblWalletId" runat="server" Text="Wallet ID: "></asp:Label>
            <asp:TextBox ID="txtWalletId" runat="server"></asp:TextBox>
            <asp:Label ID="lblTime" runat="server" Text=" From Date:"></asp:Label>
            <asp:TextBox ID="txtStartTime" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Label ID="lblTime0" runat="server" Text=" To Date:"></asp:Label>
            <asp:TextBox ID="txtEndTime" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Get Average Sent Transactions" OnClick="Get_Average_Sent_Transactions" />
        </div>
    </form>
</body>
</html>
