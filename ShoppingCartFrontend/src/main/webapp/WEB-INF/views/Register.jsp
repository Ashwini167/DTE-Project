<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="header.jsp"%>
<link rel="stylesheet" href="css/basicStyles.css">
<title>Register</title>
</head>
<body>
	<div class="container">
		<div id="signupbox"	class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
					<div class="toFloat"><a href="login">Sign In</a>
					</div>
				</div>
				<div class="panel-body">
					<form id="signupform" class="form-horizontal" role="form">
						<div id="signupalert" style="display: none"
							class="alert alert-danger">
							<p>Error:</p>
							<span></span>
						</div>
						
						<div class="form-group">
							<label for="fname" class="col-md-3 control-label">Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="fname" placeholder="Name">
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="email" placeholder="Email Address">
							</div>
						</div>
					
						<div class="form-group">
							<label for="mobile" class="col-md-3 control-label">Mobile</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="mobile" placeholder="10 digit mobile number">
							</div>
						</div>
						
						<div class="form-group">
							<label for="address" class="col-md-3 control-label">Address</label>
							<div class="col-md-9">
								<textarea class="form-control" name="address" placeholder="Enter your address" rows="5"></textarea>
							</div>
						</div>
                        
                        <div style="border-top: 1px solid#4cae4c; padding-top:15px;" ></div>
						
						<div class="form-group">
							<label for="username" class="col-md-3 control-label">User Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="username" placeholder="Choose your user name">
							</div>
						</div>						
						
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" name="passwd" placeholder="Choose your password">
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<button id="btn-signup" type="button" class="btn btn-success">
									<i class="icon-hand-right"></i> &nbsp; Sign Up
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>