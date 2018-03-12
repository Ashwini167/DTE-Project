<html>
<head>
	<%@include file="header.jsp" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	<title>Users List</title>
</head>
<body class="bg">
<form:form>
	<div class="container"> 
		<div id="loginbox" class="mainbox col-md-12 col-sm-12 margin50">
			<div class="panel panel-success" >
				<div class="panel-heading">
		       		<div class="panel-title">List of users</div>
		        </div>
		        <div style="padding-top:10px;" class="panel-body">
					<table class="table table-striped table table-hover table-condensed table-responsive">
						<thead>
						<tr align="center" class="tableTextvAlign">
							<th>Username</th>
							<th>Name of the user</th>
							<th>Mobile</th>
							<th>Email</th>
							<th>Address</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach items="${userList}" var="user">
						<tr>
							<td class="tableTextvAlign">${user.username}</td>
							<td class="tableTextvAlign">${user.name}</td>
							<td class="tableTextvAlign">${user.mobileNo}</td>
							<td class="tableTextvAlign">${user.emailId}</td>
							<td class="tableTextvAlign">${user.address}</td>
							<td><a href="<c:url value="editUser/${user.username}" />" class="btn btn-success" role="button">Edit</a>&nbsp;&nbsp;<a href="<c:url value="deleteUser/${user.username}" />" class="btn btn-warning" role="button">Delete</a></td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>	
	</div>
</form:form>
<%@include file="footer.jsp" %>	
</body>
</html>