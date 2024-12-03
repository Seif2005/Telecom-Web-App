<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExtraAmount.aspx.cs" Inherits="Telecom_Web_App.ExtraAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="planName2" runat="server" placeholder="Plan name"></asp:TextBox>
            <asp:Button ID="lastExtraAmount" runat="server" Text="CheckAmount" OnClick="lastExtraAmountClick" />
        </div>
    </form>
</body>
</html>
