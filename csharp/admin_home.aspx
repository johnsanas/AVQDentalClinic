<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin | AVQ Dental Clinic</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/theme_styles.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script src="../js/jquery-3.1.0.min.js"></script>


</head>

<body id="login-page">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div id="login-box">
                    <div id="login-box-holder">
                        <div class="row">
                            <div class="col-xs-12">
                                    <header id="login-header">
                                        <div id="login-logo">
                                            AVQ Dental Clinic
                                        </div>
                                    </header>
                                <div id="login-box-inner">
                                    <form role="form" action="index.html">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <input class="form-control" type="text" placeholder="Email address">
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                            <input type="password" class="form-control" placeholder="Password">
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <button type="submit" class="btn btn-success col-xs-12">Login</button>
                                            </div>
                                        </div>
                                       
                                    </form>
                                </div>
                            </div>
                        </div>
                        </div>
                        <div id="login-box-footer">
                            <div class="row">
                                <div class="col-xs-12">
                                    Go to 
                                    <a href="index.aspx">
                                    AVQ Home Page
                                    </a>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container col-md-12 height5"></div>

    <div class="container-fluid col-md-12 footer text-center">
        <p class="text-footer">2016 Copyright, AVQ Dental Clinic | Mechansm </p>
    </div>  


    
</body>

</html>
