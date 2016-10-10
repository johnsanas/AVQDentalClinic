<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About | AVQ Dental Clinic</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script src="../js/jquery-3.1.0.min.js"></script>
</head>
<body class="blackback">


    <nav class="navbar navbar-default increase-padding">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">AVQ <span class="avq-blue">Dental Clinic</span></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">

          <form class="navbar-form navbar-right">
            <button type="submit" class="btn btn-primary">APPOINTMENT</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="index.aspx">Home</a></li>
            <li class="active"><a href="#">About</a></li>
            <li><a href="services.aspx">Services</a></li>
            <li><a href="#">Login</a></li>
          </ul>
        </div>
      </div>
    </nav>

   
    <div class="container">
        <div>
            <h1>About AVQ Dental Clinic</h1>
            <hr>
        </div>
        <div>
            <p>
            Vivamus a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci. Aenean nec lorem.
            In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.
            </p>
            <p>
            Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. Integer nulla. Donec blandit feugiat ligula. Donec hendrerit, felis et imperdiet euismod, purus ipsum pretium metus, in lacinia nulla nisl eget sapien.
            </p>

        </div>

    </div>

    <div class="container">
        <br>
        <div class="remove-padding col-md-6">
            <img src="img/photo4.jpg" class="img-responsive image-size" width="100%"/>
        </div>
        <div class="col-md-6" >
            <p class="about_quote">
            <span class="about_span">"</span>
            Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. 
            <span class="about_span">"</span>
            </p>
        </div>
        <hr>

    </div>
    <br>
    <div class="container about-bg">
        <br>
        <div class="col-sm-12 text-center">
            <h2>AVQ Clinic Story</h2>
        </div>

        <div class="col-sm-6">
            <h3 class="avq-blue">Aliquam nonummy adipiscing augue</h3>
            <p>
                Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy
   
            </p>

            <p>
                Ut tincidunt volutpat urna. Mauris eleifend nulla eget mauris. Sed cursus quam id felis. Curabitur posuere quam vel nibh. Cras dapibus dapibus nisl. Vestibulum quis dolor a felis congue vehicula. Maecenas pede purus, tristique ac, tempus eget, egestas quis, mauris. Curabitur non eros. Nullam hendrerit bibendum justo. Fusce iaculis, est quis lacinia pretium, pede metus molestie lacus, at gravida wisi ante at libero.
                Quisque ornare placerat risus. Ut molestie magna at mi. Integer aliquet mauris et nibh. Ut mattis ligula posuere velit.
            </p>
            <p>
                Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy
   
            </p>
        </div>

        <div class="col-sm-6">
            <h3 class="avq-blue">Sed cursus quam id felis. Curabitur posuere</h3>
            <p>
                Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy
             Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy
            </p>

            <p>
                Ut tincidunt volutpat urna. Mauris eleifend nulla eget mauris. Sed cursus quam id felis. Curabitur posuere quam vel nibh. Cras dapibus dapibus nisl. Vestibulum quis dolor a felis congue vehicula. Maecenas pede purus, tristique ac, tempus eget, egestas quis, mauris. Curabitur non eros. Nullam hendrerit bibendum justo. Fusce iaculis, est quis lacinia pretium, pede metus molestie lacus, at gravida wisi ante at libero.
                Quisque ornare placerat risus. Ut molestie magna at mi. Integer aliquet mauris et nibh. Ut mattis ligula posuere velit. Nunc sagittis. Curabitur varius fringilla nisl. Duis pretium mi euismod erat. Maecenas id augue. Nam vulputate. Duis a quam non neque lobortis malesuada.
            </p>
        </div>

    </div>



    <div class="container-fluid height3 blur-bg"></div>

      
    <div class="container-fluid footer text-center">
         <p class="text-footer">2016 Copyright, AVQ Dental Clinic | Mechansm </p>
    </div>  


</body>
</html>
<%--may bug sa edit mode kung saan pagkaenter magllogout na ung system
RESOLVED! - lagay sa pinakauna ung button na gusto mangyari
--%>