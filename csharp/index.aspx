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

	<div class="banner">
		<nav class="navbar navbar-default myNav">
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
		      	<button type="submit" class="btn btn-primary button-shadow">Appointment</button>
		      </form>
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#">Home</a></li>
		        <li><a href="about.aspx">About</a></li>
		        <li><a href="services.aspx">Services</a></li>
		        <li><a href="#" data-toggle="modal" data-target="#loginModal">Login</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>

		<div class="container banner-down">
			<p class="carousel-font">Welcome to <br>AVQ <span class="avq-blue">Dental Clinic</span></p>
	      <p>Quisque ornare placerat risus. Ut molestie magna at mi. Integer aliquet mauris et nibh
				<br>Duis pretium mi euismod erat. Maecenas id augue. </p>
				<br>
				 <form id="form1" runat="server" class="form-inline">
				  <%--<div class="form-group">--%>
                    <div class="form-group form-inline">
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
				 <span id="spanAlert" class="bg-danger"><asp:Label runat="server" ID="lblAlert" Visible="false"><strong>Username</strong> or <strong>Password</strong> do not match. Please try again</asp:Label></span>
        
				<!-- <span class="bg-danger" style="<?php echo $_SESSION['display']; ?>"><strong>Username</strong> or <strong>Password</strong> do not match. Please try again</span>-->
				</form>
		</div>
	</div>

	<!--space-->
	<div class="container-fluid height1 text-center"></div>
	 
  <div class="wrapper container h1font">
  	 <h2 class="text-center">Let us give you a perfect smile</h2>
  	 <h4 class="sub-text text-center">Where technology meets dental artistry</h4><br>


  	 <div class="col-md-6">
  	 	<h4 class="element1">You don't need to have great technical experience to use your product.</h4>
  	 	<p class="sub-element1">
  	 		Whether you want to fill this paragraph with some text like I'm doing right now, this place is perfect to describe some features or anything you want - React has a complete solution for you. 
	 	</p>
  	 </div>
  	 <div class="col-md-6 height2"></div>


  	 <div class="col-md-12 divider"></div>

  	 <div class="col-md-6"></div>
	 <div class="col-md-6">
  	 	<h4 class="element1">You don't need to have great technical experience to use your product.</h4>
  	 	<p class="sub-element1">
  	 		Whether you want to fill this paragraph with some text like I'm doing right now, this place is perfect to describe some features or anything you want - React has a complete solution for you. 
	 	</p>
  	 </div>


  </div>

	<div class="container-fluid remove-padding">
		<div class="col-md-12 pricing remove-padding text-center">
			<h3 class="pricingfont">Free trial. No contract. Cancel when you want.</h3>
			<p class="sub-pricingfont">All plans include a 7-day free trial</p>

			<div class="container pricingfont">
				<div class="col-md-4 chart2">
						<div class="quantity">
							<span class="dollar">Php</span>
							<span class="price">250</span>
							<span class="period">/month</span>
						</div>
						<div class="plan-name">Special</div><br>
						<div class="specs">
							<div class="spec">
								<span class="variable">15</span>
								team members
							</div>
							<div class="spec">
								<span class="variable">Digital</span>
								recurring billing
							</div>
							<div class="spec">
								<span class="variable">Virtual</span>
								online terminal
							</div>
							<div class="spec">
								<span class="variable">15</span>
								total products
							</div>
							<div class="spec">
								<span class="variable">0.5%</span>
								Transaction fee
							</div>
						</div>
						<a class="btn btn-default button-down" href="signup.html">
							<span>Start free trial</span>
						</a>
				</div>	

				<div class="col-md-4 chart">
					<div class="popular">Most popular</div>
					<div class="quantity">
						<span class="pesos">Php</span>
						<span class="price">300</span>
						<span class="period">/month</span>
					</div>
					
					<div class="plan-name">Profesional</div><br>
					<div class="specs">
						<div class="spec">
							<span class="variable">15</span>
							team members
						</div>
						<div class="spec">
							<span class="variable">Digital</span>
							recurring billing
						</div>
						<div class="spec">
							<span class="variable">Virtual</span>
							online terminal
						</div>
						<div class="spec">
							<span class="variable">15</span>
							total products
						</div>
						<div class="spec">
							<span class="variable">0.5%</span>
							Transaction fee
						</div>
					</div>
					<a class="btn btn-default button-down" href="signup.html">
						<span>Start free trial</span>
					</a>
				</div>

				<div class="col-md-4 chart2">
				
						<div class="quantity">
							<span class="dollar">Php</span>
							<span class="price">200</span>
							<span class="period">/month</span>
						</div>
						<div class="plan-name">Regular</div><br>
						<div class="specs">
							<div class="spec">
								<span class="variable">15</span>
								team members
							</div>
							<div class="spec">
								<span class="variable">Digital</span>
								recurring billing
							</div>
							<div class="spec">
								<span class="variable">Virtual</span>
								online terminal
							</div>
							<div class="spec">
								<span class="variable">15</span>
								total products
							</div>
							<div class="spec">
								<span class="variable">0.5%</span>
								Transaction fee
							</div>
						</div>
						<a class="btn btn-default button-down" href="signup.html">
							<span>Start free trial</span>
						</a>
				
				</div>
				</div>
			</div>

		

	</div>

  	 
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
            center: {lat: 14.544785, lng: 121.067239},
            zoom: 20
        });
      }
    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key= AIzaSyBPIUO8c2pEW45JgEd1XbHmnbNDa__lClU &callback=initMap">
    </script>

     <script src="js/vendor/jquery.2.1.3.min.js"></script>
	  <script src="js/jquery.lazyload.v1.9.1.js"></script>
	  <script src="js/script.js"></script>
</body>
</html>