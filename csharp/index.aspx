<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>AVQ Dental Clinic</title>

	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css">
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
	      <a class="navbar-brand" href="#">AVQ <span class="avq-blue">Dental Clinic</span></a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">

	      <form class="navbar-form navbar-right">
	      	<button type="submit" class="btn btn-primary">APPOINTMENT</button>
	      </form>
	      <ul class="nav navbar-nav navbar-right">
	        <li class="active"><a href="#">Home</a></li>
	        <li><a href="about.aspx">About</a></li>
	        <li><a href="services.aspx">Services</a></li>
	        <li><a href="#" data-toggle="modal" data-target="#loginModal">Login</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>

	<div id="myCarousel" class="carousel slide grad" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		    <li data-target="#myCarousel" data-slide-to="3"></li>
		  </ol>

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src="img/photo2.jpg" alt="Photo 1" class="carousel-height">
		      <div class="container">
			      <div class="carousel-caption">
			        <p class="carousel-font">Welcome to <br>AVQ <span class="avq-blue">Dental Clinic</span></p>
			        <p>Quisque ornare placerat risus. Ut molestie magna at mi. Integer aliquet mauris et nibh
						<br>Duis pretium mi euismod erat. Maecenas id augue. </p>
						<br>

						 <form id="form1" runat="server" class="form-inline">
						  <div class="form-group">
						    <label class="sr-only" for="txtUserName">Username:</label>
						    <%--<input type="text" name="userid" class="form-control" id="userid" placeholder="Username">--%>
                            <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
						  </div>
						  <div class="form-group">
						    <label class="sr-only" for="txtPassWord">Password:</label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>
						    <%--<input type="password" name="password" class="form-control" id="pwd" placeholder="Password">--%>
						  </div>
						  <%--<button type="submit" name="btn" class="btn btn-default">Log in</button>--%>
                          <asp:Button class="btn btn-default" ID="btnSubmit" runat="server" Text="Log in" OnClick="Click"/>
						  <br><br>
						 <span ID="spanAlert" class="bg-danger"><asp:Label runat="server" ID="lblAlert" Visible="false"><strong>Username</strong> or <strong>Password</strong> do not match. Please try again</asp:Label></span>
                             <asp:span></asp:span>
						</form>
			      </div>
		      </div>
		    </div>

         <div class="item">
			  <img src="img/photo1.jpg" alt="Chania" width="460" height="345">
			  <div class="carousel-caption">
			    
			  </div>
			</div>

			<div class="item">
			  <img src="img/photo3.jpg" alt="Chania" width="460" height="345">
			  <div class="carousel-caption">
			    
			  </div>
			</div>

			<div class="item">
			  <img src="img/photo4.jpg" alt="Chania" width="460" height="345">
			  <div class="carousel-caption">
			    
			  </div>
			</div>


		  <!-- Left and right controls
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a> -->
		</div>
	</div>

	<div class="container-fluid text-center bottom-container">
	  <button type="submit" class="btn btn-warning vcenter">SET AN APPOINTMENT</button>
	</div>

	<!--space-->
	<div class="container-fluid height text-center"></div>
	
  <div class="wrapper container">
  	 <h1 class="text-center">OUR SERVICES</h1><br>
    <section class="trip__listing">
      <div class="container">
        <div class="listing__board">
          <article class="listing__card card--post card--big">
            <a class="card__inner" href="trip-detail.html">
              <div class="post__thumbnail">
                <img class="lazy no-js-img" data-original="img/trip/iceland--thumbnail.jpg" alt="Trip tip thumbnail" />
                <noscript>
                  <img src="img/trip/iceland--thumbnail.jpg" alt="Trip tip thumbnail" />
                </noscript>
              </div>
              <div class="post__info">
                <h3>Lorem ipsum</h3>
                <p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa li sam vocabular.</p>
              </div>
            </a>
          </article>
          <!-- Begin article .listing__card -->
          <article class="listing__card card--post card--big">
            <a class="card__inner" href="trip-detail.html">
              <div class="post__thumbnail">
                <img class="lazy no-js-img" data-original="img/trip/hitchhiker--thumbnail.jpg" alt="Trip tip thumbnail" />
                <noscript>
                  <img src="img/trip/hitchhiker--thumbnail.jpg" alt="Trip tip thumbnail" />
                </noscript>
              </div>
              <div class="post__info">
                <h3>Lorem ipsum</h3>
                <p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa li sam vocabular.</p>
              </div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--post card--big">
            <a class="card__inner" href="trip-detail.html">
              <div class="post__thumbnail">
                <img class="lazy no-js-img" data-original="img/trip/fallen-tree--thumbnail.jpg" alt="Trip tip thumbnail" />
                <noscript>
                  <img src="img/trip/fallen-tree--thumbnail.jpg" alt="Trip tip thumbnail" />
                </noscript>
              </div>
              <div class="post__info">
                <h3>Lorem ipsum</h3>
                <p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa li sam vocabular.</p>
              </div>
            </a>
          </article><!-- end article .listing__card -->
          <!-- Begin article .listing__card -->
          <article class="listing__card card--post card--big">
            <a class="card__inner" href="trip-detail.html">
              <div class="post__thumbnail">
                <img class="lazy no-js-img" data-original="img/trip/tunnel-graffiti--thumbnail.jpg" alt="Trip tip thumbnail" />
                <noscript>
                  <img src="img/trip/tunnel-graffiti--thumbnail.jpg" alt="Trip tip thumbnail" />
                </noscript>
              </div>
              <div class="post__info">
                <h3>Lorem ipsum</h3>
                <p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa li sam vocabular.</p>
              </div>
            </a>
          </article><!-- end article .listing__card -->
      </div><!-- end div .container -->
    </section><!-- end section .trip__listing -->
    <!-- Begin footer -->
  </div><!-- end div .wrapper -->

  	<!--space-->
	<div class="container-fluid height text-center"></div>
	<div id="map" class="container-fluid text-center height3"></div>

	<!-- Modal -->
	<div id="loginModal" class="modal fade" role="dialog">
	  <div class="modal-dialog">

	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">AVQ Dental Clinic</h4>
	      </div>
	      <div class="modal-body">
	         <form>
				  <div class="form-group">
				    <label for="email">Username</label>
				    <input type="email" class="form-control" id="email">
				  </div>
				  <div class="form-group">
				    <label for="pwd">Password:</label>
				    <input type="password" class="form-control" id="pwd">
				  </div>
				  
				  <button type="submit" class="btn btn-default">Login</button>
				</form>
	      </div>
	    </div>

	  </div>
	</div>

	<div class="container-fluid footer text-center">
		<p class="text-footer">2016 Copyright, AVQ Dental Clinic | Mechansm </p>
	</div>

    <script>
        function initMap() {
            var mapDiv = document.getElementById('map');
            var map = new google.maps.Map(mapDiv, {
                center: { lat: 14.544785, lng: 121.067239 },
                zoom: 20
            });
        }
    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key= AIzaSyBPIUO8c2pEW45JgEd1XbHmnbNDa__lClU &callback=initMap">
    </script>
	 
   
   <script src="js/jquery.lazyload.v1.9.1.js"></script>
   <script src="js/script.js"></script>
</body>
</html>