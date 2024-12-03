<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Num_Accept_Payment_Trans.aspx.cs" Inherits="Telecom_Web_App.Num_Accept_Payment_Trans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <h2> Account Specification</h2>
 
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="MobileNo."></asp:Label>
            <asp:TextBox ID="AccMobileNo" runat="server" Width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="32px" Text="Submit" Width="78px" OnClick="Get_TotalNumTrans_TotalNumPoints" />
        </div>
    </form>
</body>
</html>
