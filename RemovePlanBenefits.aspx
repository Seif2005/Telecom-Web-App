<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemovePlanBenefits.aspx.cs" Inherits="Telecom_Web_App.RemovePlanBenefits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Remove benefits</h2>
            <asp:Label ID="lblMobileNo" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileno" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblPlanId" runat="server" Text=" Plan Id:"></asp:Label>
            <asp:TextBox ID="txtPlanID" runat="server" ></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Remove" OnClick="RemoveClick" />
        </div>
    </form>
</body>
</html>
