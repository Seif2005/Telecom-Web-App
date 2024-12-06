<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePoints.aspx.cs" Inherits="Telecom_Web_App.UpdatePoints" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css" />
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Update Points</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Account Specification</h2>
            <asp:Label ID="lblMobileNo" runat="server" Text="MobileNo:  "></asp:Label>
            <asp:TextBox ID="Mobile_No" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Get Total Points" OnClick="Retrive_total_points" />
        </div>
    </form>
</body>
</html>
