<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayRemAmount.aspx.cs" Inherits="Telecom_Web_App.DisplayRemAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtplanName" runat="server" placeholder="Plan name"></asp:TextBox>
<asp:Button ID="lastRemainingAmount" runat="server" Text="Check Amount" OnClick="lastRemainingAmountClick" />
        </div>
    </form>
</body>
</html>
