<!DOCTYPE html>
<html lang="en">
<head>
	<title>About | AVQ Dental Clinic</title>

	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
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
	      <a class="navbar-brand" href="#">AVQ <span class="avq-blue">Dental Clinic</span></a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">

	      <form class="navbar-form navbar-right">
	      	<button type="submit" class="btn btn-primary">APPOINTMENT</button>
	      </form>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="../index.aspx">Home</a></li>
	        <li class="active"><a href="#">About</a></li>
	        <li><a href="#">Services</a></li>
	        <li><a href="#">Login</a></li>
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
                   
						</form>
			      </div>
		      </div>
		    </div>

         <div class="item">
			  <img src="img/photo2.jpg" alt="Chania" width="460" height="345">
			  <div class="carousel-caption">
			    <h3>Chania</h3>
			    <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
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

	<div></div>
</body>
</html>