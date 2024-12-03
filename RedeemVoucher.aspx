<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedeemVoucher.aspx.cs" Inherits="Telecom_Web_App.RedeemVoucher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <h2>Redeem Voucher</h2>
            <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number: "></asp:Label>
            <br /><br />

            <label for="txtVoucherId">Enter Voucher ID:</label>
            <asp:TextBox ID="txtVoucherId" runat="server" CssClass="form-control" />
            <br />

            <asp:Button ID="btnRedeem" runat="server" Text="Redeem Voucher" OnClick="btnRedeem_Click" CssClass="btn btn-primary" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
