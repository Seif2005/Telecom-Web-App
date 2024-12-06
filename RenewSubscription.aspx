<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RenewSubscription.aspx.cs" Inherits="Telecom_Web_App.RenewSubscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Renew Subscription</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Renew Subscription</h2>
        
        <label>Mobile Number:</label>
        <asp:Label ID="lblMobileNumber" runat="server" Text=""></asp:Label>
        <label>Plan ID:</label>
            <asp:TextBox ID="txtPlanId" runat="server"></asp:TextBox>


        <label>Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <label>Payment Method:</label>
        <asp:DropDownList ID="dropDPaymentMethod" runat="server">
            <asp:ListItem Text="Credit " Value="Credit "></asp:ListItem>
            <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
        </asp:DropDownList><br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Renew Subscription" OnClick="btnSubmit_Click" />

        </div>
    </form>
</body>
</html>