<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Admin | AVQ Dental Clinic</title>

	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css">

	<script src="js/demo-rtl.js"></script>
 
	<link rel="stylesheet" type="text/css" href="admin/css/libs/font-awesome.css"/>
	<link rel="stylesheet" type="text/css" href="admin/css/libs/nanoscroller.css"/>
	 
	<link rel="stylesheet" type="text/css" href="admin/css/compiled/theme_styles.css"/>
	 
	 
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400' rel='stylesheet' type='text/css'>
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
										<img src="img/avqlogoadmin.png" alt=""/>
									</div>
								</header>
								<div id="login-box-inner">
									<form role="form" runat="server">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											<asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
										</div>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-key"></i></span>
											<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>
										</div>
										<div id="remember-me-wrapper">
											<div class="row">
												<div class="col-xs-6">
													<div class="checkbox-nice">
														<input type="checkbox" id="remember-me" checked="checked"/>
														<label for="remember-me">
														Remember me
														</label>
													</div>
												</div>
												<a href="forgot-password.html" id="login-forget-link" class="col-xs-6">
												Forgot password?
												</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<asp:Button class="btn btn-success col-xs-12" ID="btnSubmit" runat="server" Text="Log in" OnClick="Click"/>
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
								Proceed to 
								<a href="index.aspx">
								AVQ Dental Clinic  now
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="admin/js/demo-skin-changer.js"></script>  
	<script src="admin/js/jquery.js"></script>
	<script src="admin/js/bootstrap.js"></script>
	<script src="admin/js/jquery.nanoscroller.min.js"></script>
	<script src="admin/js/demo.js"></script>  
	 
	 
	<script src="admin/js/scripts.js"></script>
</body>
</html>