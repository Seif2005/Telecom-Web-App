<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemovePlanBenefits.aspx.cs" Inherits="Telecom_Web_App.RemovePlanBenefits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles1.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <title>Telecom Co. - Remove Benefit</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Remove benefits</h2>
            <asp:Label ID="lblMobileNo" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileno" runat="server"></asp:TextBox>
            <asp:Label ID="lblPlanId" runat="server" Text=" Plan Id:"></asp:Label>
            <asp:TextBox ID="txtPlanID" runat="server" ></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Remove" OnClick="RemoveClick" />
        </div>
    </form>
</body>
</html>
