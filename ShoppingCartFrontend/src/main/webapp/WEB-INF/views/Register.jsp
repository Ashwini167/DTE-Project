<html>
<head>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@include file="header.jsp" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<title>Register/Sign-Up</title>
</head>
<body>
	<div class="container">
		<div id="signupbox"	class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">
			<div class="panel panel-success">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
					<div class="toFloat"><a href="login">Sign In</a>
					</div>
				</div>
				<div class="panel-body">
				<c:url value="/addUserDetail" var="actionString" />
					<form:form id="signupform" cssClass="form-horizontal" modelAttribute="user" method="POST" action="${actionString}">
						<div id="signupalert" style="display: none" class="alert alert-danger">
							<p>Error:</p>
							<span></span>
						</div>
						<p>${message}</p>
						<div class="form-group">
							<label for="fname" class="col-md-3 control-label">Name</label>
							<div class="col-md-9">
								<form:input cssClass="form-control" path="name" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<form:input cssClass="form-control" path="emailId" />
							</div>
						</div>
					
						<div class="form-group">
							<label for="mobile" class="col-md-3 control-label">Mobile</label>
							<div class="col-md-9">
								<form:input cssClass="form-control" path="mobileNo" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="address" class="col-md-3 control-label">Address</label>
							<div class="col-md-9">
								<form:textarea cssClass="form-control" path="address" rows="5" />
							</div>
						</div>
                        
                        <div style="border-top: 1px solid#4cae4c; padding-top:15px;" ></div>
						
						<div class="form-group">
							<label for="username" class="col-md-3 control-label">User Name</label>
							<div class="col-md-9">
								<form:input cssClass="form-control" path="username" />
							</div>
						</div>						
						
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<form:password cssClass="form-control" path="password" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-offset-3 col-md-9">
								<input type="submit" id="btn-signup" class="btn btn-success icon-hand-right" value="Sign Up" />
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>