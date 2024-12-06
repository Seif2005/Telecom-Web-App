<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Num_Accept_Payment_Trans.aspx.cs" Inherits="Telecom_Web_App.Num_Accept_Payment_Trans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Account Specification</h2>
            <asp:Label ID="Label1" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="AccMobileNo" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Get_TotalNumTrans_TotalNumPoints" />
        </div>
    </form>
</body>
</html>
