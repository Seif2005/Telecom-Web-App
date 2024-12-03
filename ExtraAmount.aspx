<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExtraAmount.aspx.cs" Inherits="Telecom_Web_App.ExtraAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-label">Enter Name of Plan</div>
        <div class="form-label">
            <asp:TextBox ID="planName2" runat="server" placeholder="Plan name" class="input-field"></asp:TextBox>
            <asp:Button ID="lastExtraAmount" runat="server" Text="Check Amount" OnClick="lastExtraAmountClick" class="submit-button"/>
        </div>
    </form>
</body>
</html>
