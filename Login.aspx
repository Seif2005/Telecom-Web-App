﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Telecom_Web_App.Login" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
        <style>
            /* General Page Styling */
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                display: flex;
                justify-content: center;
                flex-direction: column;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .title {
                font-size: 48px;
                color: #333;
                margin-top: -100px;
                margin-bottom: 100px;
                text-align: center;
                font-weight: bold;
            }

            /* Form Styling */
            .login-form {
                font-size: 16px;
                border: 3px solid #2980b9;
                border-radius: 10px;
                background-color: white;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                width: 300px; /* Control form width */
            }
            .login-form input[type="text"] {
                text-align: left;
                display: block;
                margin: 10px 0;
                width: 100%;
                max-width: 300px;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
            }

                .login-form input[type="text"]:hover {
                    border-color: #2980b9;
                }

                .login-form input[type="text"]:focus {
                    outline: none;
                    border-color: #2980b9;
                    box-shadow: 0 0 4px rgba(0, 91, 179, 0.5);
                }
            
            form input[type="password"] {
                text-align: left;
                display: block;
                margin: 10px 0;
                width: 100%;
                max-width: 300px;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

                form input[type="password"]:hover {
                    border-color: #2980b9;
                }

                form input[type="password"]:focus {
                    outline: none;
                    border-color: #2980b9;
                    box-shadow: 0 0 4px rgba(0, 91, 179, 0.5);
                }
            /* Heading Styling */
            h2 {
                text-align: center;
                font-size: 24px;
                color: #333;
                margin-bottom: 20px;
            }

            /* Label Styling */
            .label {
                font-size: 14px;
                color: #555;
                margin-bottom: 8px;
                display: block;
            }

            /* Textbox Styling */
            .textbox {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ddd;
                border-radius: 4px;
                font-size: 14px;
                color: #333;
            }

            /* Button Styling */
            .button {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 12px;
                width: 100%;
                font-size: 16px;
                border-radius: 4px;
                cursor: pointer;
            }

            .button:hover {
                background-color: #0056b3;
            }
    </style>
    <title>Telecom Co. - Login</title>
</head>
<body>
    <h1 class="title">Telecom26 Co.</h1>
    <form id="form1" class="login-form" runat="server">
        <div>
            <h2>Login</h2>
            <asp:Label ID="lblUsername" class="label" runat="server" Text="Mobile Number:"></asp:Label>
            <asp:TextBox ID="txtMobileNo" class="textbox" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblPassword" runat="server" class="label" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" class="textbox" TextMode="Password"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnLogin" runat="server" class="button" Text="Login" OnClick="LoginClick" />
        </div>
    </form>
</body>
</html>