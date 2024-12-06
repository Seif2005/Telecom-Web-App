﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Telecom_Web_App.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    <style>
        /* Center the "Results" label */
        .title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-top: 50px;
        }

        /* Style the GridView */
        .custom-gridview {
            width: 70%; /* Make the table smaller */
            margin-left: auto; /* Center horizontally */
            margin-right: auto;
            margin-top: 30px; /* Add space above the table */
            border: 1px solid #ccc;
            border-collapse: collapse;
        }

        .custom-gridview th, .custom-gridview td {
            padding: 8px;
            text-align: center;
        }

        .custom-gridview th {
            background-color: #4CAF50;
            color: white;
        }

        .custom-gridview tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .custom-gridview tr:hover {
            background-color: #ddd;
        }
        .preview{
            color: #333;
            text-align: center;
            font-family: Arial, sans-serif;
        }

    </style>
    <title>Preview</title>
</head>
<body>
    <h1 class ="preview">Preview</h1>
    <form id="form1" runat="server">
        <asp:GridView ID="customerGridView" CssClass="custom-gridview" runat="server" AutoGenerateColumns="True">
        </asp:GridView>
    </form>
</body>
</html>