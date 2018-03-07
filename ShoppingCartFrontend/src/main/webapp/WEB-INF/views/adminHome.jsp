<html>
<head>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@include file="header.jsp" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<title>Logged in as Admin</title>
	<style>
	.list-group, .media-body, .media-heading {
		max-width:400px;
	    margin-left: 15px;
	    padding-top:10px;
	    padding-bottom:10px;
	}
	.media-heading {
		color:#4cae4c;
	}
	</style>
</head>
<body class="bg">
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading success">Welcome back ${nameOfUser}! Please choose one of the options
					from the below actions.</div>
			<div class="panel-body">
			<div class="media">
				<div class="media-left media-middle">
					<a href="#"> 
						<img class="media-object" src="resources/images/bgImages/Category.jpg" alt="Categories">
					</a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">Manage Categories</h4>
					<div class="list-group">
						<a href="" class="list-group-item">View available categories</a> 
						<a href="" class="list-group-item">Add new category</a> 
						<a href="" class="list-group-item">Update/delete categories</a>
					</div>
				</div>
			</div>

			<div class="media">
				<div class="media-left media-middle">
					<a href="#"> 
						<img class="media-object" src="resources/images/bgImages/Products.png" alt="Products">
					</a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">Manage Products</h4>
					<div class="list-group">
						<a href="" class="list-group-item">Add New Product</a> 
						<a href="" class="list-group-item">Modify (Update/Delete) product details</a>
					</div>
				</div>
			</div>

			<div class="media">
				<div class="media-left media-middle">
					<a href="#"> 
						<img class="media-object" src="resources/images/bgImages/Users.jpg" alt="Users">
					</a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">Manage Users</h4>
					<div class="list-group">
						<a href="" class="list-group-item">View/Modify User List</a>
					</div>
				</div>
			</div>

			<div class="media">
				<div class="media-left media-middle">
					<a href="#"> 
						<img class="media-object" src="resources/images/bgImages/Supplier.jpg" alt="Suppliers">
					</a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">Manage Suppliers</h4>
					<div class="list-group">
						<a href="" class="list-group-item">View Supplier Details</a> 
						<a href="" class="list-group-item">Modify (Update/Delete) Supplier details</a>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>