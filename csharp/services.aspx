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
<body>

    <nav class="navbar navbar-default increase-padding">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.aspx">AVQ <span class="avq-blue">Dental Clinic</span></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">

          <form class="navbar-form navbar-right">
            <button type="submit" class="btn btn-primary">APPOINTMENT</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="index.aspx">Home</a></li>
            <li><a href="about.aspx">About</a></li>
            <li class="active"><a href="#">Services</a></li>
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
            <section >
      <!-- Begin div .container -->
      <div class="container">
        <!-- Begin div .listing__board -->
        <div class="listing__board">
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--camping" href="explore-camping.html">
              <h1>Camping</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--culture" href="#">
              <h1>Culture</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--entertainment" href="#">
              <h1>Entertainment</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--forest" href="#">
              <h1>Forest</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--mountains" href="#">
              <h1>Mountains</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--nature" href="#">
              <h1>Nature</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--tourism" href="#">
              <h1>Tourism</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--water" href="#">
              <h1>Water</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--explore card--small">
            <a class="card__inner card--winter" href="#">
              <h1>Winter</h1>
              <div class="card__overlay"></div>
            </a>
          </article><!-- end article .listing__card -->
        </div><!-- end div .listing__board -->
      </div><!-- end div .container -->
    </section>
    

    </div>
    <br>
    
      
    <div class="container-fluid footer text-center">
        <p class="text-footer">2016 Copyright, AVQ Dental Clinic | Mechansm </p>
    </div>  


</body>
</html>
<%--may bug sa edit mode kung saan pagkaenter magllogout na ung system
RESOLVED! - lagay sa pinakauna ung button na gusto mangyari
--%>