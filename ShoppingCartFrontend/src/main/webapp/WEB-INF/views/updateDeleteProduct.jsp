<html>
<head>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@include file="header.jsp" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<title>Update or Delete Product</title>
</head>
<body>
<div class="container">
	<form:form modelAttribute="product" method="GET">
	<div id="loginbox" class="mainbox col-md-12 col-sm-8 margin50">
		<div class="panel panel-success" >
			<div class="panel-heading">
	       		<div class="panel-title">Available products</div>
	        </div>
	        <div style="padding-top:30px;" class="panel-body">
				<table class="table table-striped table table-hover table-condensed table-responsive">
					<thead>
					<tr align="center">
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Product Desc</th>
						<th>Price</th>
						<th>Stock</th>
						<th>Category</th>
						<th>Supplier ID</th>
						<th>Action</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${listProducts}" var="product">
					<tr>
						<td class="tableTextvAlign" align="center">${product.productId}</td>
						<td class="tableTextvAlign">${product.productName}</td>
						<td class="tableTextvAlign">${product.prodDesc}</td>
						<td class="tableTextvAlign" align="right">${product.price}</td>
						<td class="tableTextvAlign" align="right">${product.stock}</td>
						<td class="tableTextvAlign" align="right">${product.categoryId}</td>
						<td class="tableTextvAlign" align="center">${product.supplierId}</td>
						<td><a href="<c:url value="editProduct/${product.productId}" />" class="btn btn-success" role="button">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="deleteProduct/${product.productId}" />" class="btn btn-warning" role="button">Delete</a></td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</form:form>
</div>
</body>
</html>