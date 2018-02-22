<html>
<head>
	<%@include file="header.jsp" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	<title>Add Category</title>
</head>
<body class="bg">
<div class="container">
<div id="loginbox" class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 margin50">
	<div class="panel panel-success" >
		<div class="panel-heading">
       		<div class="panel-title">Available categories</div>
        </div>
        <div style="padding-top:30px;" class="panel-body">
			<table class="table table-striped table table-hover table-condensed table-responsive">
				<thead>
				<tr align="center">
					<th>Category ID</th>
					<th>Category Name</th>
					<th>Category Description</th>
					<th>Action</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${listCategories}" var="category">
				<tr>
					<td class="tableTextvAlign">${category.categoryId}</td>
					<td class="tableTextvAlign">${category.categoryName}</td>
					<td class="tableTextvAlign">${category.categoryDesc}</td>
					<td><a href="<c:url value="editCategory/${category.categoryId}" />" class="btn btn-success" role="button">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="deleteCategory/${category.categoryId}" />" class="btn btn-warning" role="button">Delete</a></td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
</div>
</body>
</html>