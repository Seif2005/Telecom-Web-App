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
            background-color: #2C3E50;
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
            margin-top:70px;
        }

    </style>
    <title>Telecom Co. - Preview</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link rel="stylesheet" href="styles2.css"/>
    <link rel="icon" type="image/x-icon" href="static/favicon.ico"/>
    

    <style>
        .navbar {
            width: 100%;
            margin: 0;
            border-radius: 0;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="GoHome.aspx">Telecom26 Co.</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="GoHome.aspx">Home</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/Login.aspx"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
        </div>
    </nav>
    <h1 class ="preview">Preview</h1>
    <form id="form1" runat="server">
        <asp:GridView ID="customerGridView" CssClass="custom-gridview" runat="server" AutoGenerateColumns="True">
        </asp:GridView>
    </form>
</body>
</html>