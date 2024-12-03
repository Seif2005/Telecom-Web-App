<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePoints.aspx.cs" Inherits="Telecom_Web_App.UpdatePoints" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Account Specification</h2>
            <asp:Label ID="lblMobileNo" runat="server" Text="MobileNo:  "></asp:Label>
            <asp:TextBox ID="Mobile_No" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Get Total Points" OnClick="Retrive_total_points" />
        </div>
    </form>
</body>
</html>
