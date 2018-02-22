<html>
<head>
	<%@include file="header.jsp" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	<title>Edit User Details</title>
	<style>
	.panel-success>.panel-heading {
	    font-weight: bold;
	    color: #ffffff;
	    background-color: #5cb85c;
	    border-color: #4cae4c;
	}
	.tableTextvAlign {
	vertical-align:middle!important;
	}
	</style>
</head>
<body class="bg">
	<div class="container">
		<div id="signupbox"	class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">
			<div class="panel panel-success">
				<div class="panel-heading">
					<div class="panel-title">Edit User Details</div>
				</div>
			</div>
			<div class="panel-body">
			<c:url var="actionString" value="/editUserDetails" />
				<form:form id="editUserDetails" modelAttribute="user" action="${actionString}" method="POST">
					<div id="signupalert" style="display: none" class="alert alert-danger">
							<p>Error:</p>
							<span></span>
					</div>	
					<div class="form-group">
						<label for="fname" class="col-md-3 control-label">Name</label>
						<div class="col-md-9">
							<form:input path="name" />
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-md-3 control-label">Email</label>
						<div class="col-md-9">
							<form:input path="emailId" readonly="readonly"/>
						</div>
					</div>					
					<div class="form-group">
						<label for="mobile" class="col-md-3 control-label">Mobile</label>
						<div class="col-md-9">
							<form:input path="mobileNo" />
						</div>
					</div>
					<div class="form-group">
						<label for="address" class="col-md-3 control-label">Address</label>
						<div class="col-md-9">
							<form:textarea path="address" rows="5" cols="30" />
						</div>
					</div>
                    <div style="border-top: 1px solid#4cae4c; padding-top:15px;" ></div>
						<div class="form-group">
							<label for="username" class="col-md-3 control-label">User Name</label>
							<div class="col-md-9">
								<form:input path="username" readonly="readonly"/>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<form:password path="password" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-3 col-md-9">
								<input type="submit" class="btn btn-success" value="Update" />
							</div>
						</div>
					</form:form>
				</div>
			</div>
	</div>
</body>
</html>