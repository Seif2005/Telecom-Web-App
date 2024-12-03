<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayRemAmount.aspx.cs" Inherits="Telecom_Web_App.DisplayRemAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        /* Body styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f4f4f9;
}

/* Form container styling */
form {
    text-align: center;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Specific label container */
.form-label {
    font-size: 24px;
    font-weight: bold;
    color: #333;
    margin-bottom: 20px;
}

/* Input field styling */
form input[type="text"] {
    width: 100%;
    max-width: 300px;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Button styling */
form input[type="submit"], 
form button {
    background-color: #007bff;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

/* Button hover effect */
form input[type="submit"]:hover, 
form button:hover {
    background-color: #0056b3;
}

        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-label">Enter Name of Plan</div>
        <div>
            <asp:TextBox ID="txtplanName" runat="server" placeholder="Plan name" class="input-field"></asp:TextBox>
            <asp:Button ID="lastRemainingAmount" runat="server" Text="Check Amount" OnClick="lastRemainingAmountClick" class="submit-button"/>
        </div>
    </form>
</body>
</html>
