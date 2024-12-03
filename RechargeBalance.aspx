<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RechargeBalance.aspx.cs" Inherits="Telecom_Web_App.RechargeBalance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Initiate Balance Payment</h2>
            
            <label>Mobile Number:</label>
            <asp:Label ID="lblMobileNumber" runat="server" Text=""></asp:Label><br /><br />

            <br />

            <label for="txtAmount">Amount:</label>
            <asp:TextBox ID="txtAmount" runat="server" />
            <br />

            <label for="ddlPaymentMethod">Payment Method:</label>
            <asp:DropDownList ID="ddlPaymentMethod" runat="server">
                <asp:ListItem Text="Select Payment Method" Value="" />
                <asp:ListItem Text="Credit " Value="Credit " />
                <asp:ListItem Text="Cash" Value="Cash" />
            </asp:DropDownList>
            <br />

            <asp:Button ID="btnSubmit" runat="server" Text="Initiate Payment" OnClick="btnSubmit_Click" />
            <br />

            <asp:Label ID="lblResult" runat="server" />
        </div>
    </form>
</body>
</html>
