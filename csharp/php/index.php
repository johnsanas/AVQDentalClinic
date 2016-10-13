<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Index AVQ Dental Clinic</title>

	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="../css/style.css">
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
		      <img src="../img/photo2.jpg" alt="Photo 1" class="carousel-height">
		      <div class="container">
			      <div class="carousel-caption">
			        <p class="carousel-font">Welcome to <br>AVQ <span class="avq-blue">Dental Clinic</span></p>
			        <p>Quisque ornare placerat risus. Ut molestie magna at mi. Integer aliquet mauris et nibh
						<br>Duis pretium mi euismod erat. Maecenas id augue. </p>
						<br> 
						 <form id="form1" runat="server" class="form-inline">
						  <div class="form-group">
						    <label class="sr-only" for="txtUserName">Username:</label>
						   <input type="text" name="userid" class="form-control" id="userid" placeholder="Username">
						  </div>
						  <div class="form-group">
						    <label class="sr-only" for="txtPassWord">Password:</label>
						   <input type="password" name="password" class="form-control" id="pwd" placeholder="Password">
						  </div>
						  <button type="submit" name="btn" class="btn btn-default">Log in</button>
						</form>
			      </div>
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
	


  	<!--space-->
	<div class="container-fluid height text-center"></div>
	<div id="map" class="container-fluid text-center height3"></div>

	<div class="container-fluid footer text-center">
		<p class="text-footer">2016 Copyright, AVQ Dental Clinic | Mekansm </p>
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