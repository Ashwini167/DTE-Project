<html>

<head>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@include file="header.jsp" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<title>Add New Product</title>
</head>

<body class="bg">
<div class="container">
<form:form action="insertProduct" modelAttribute="product" enctype="multipart/form-data">
	<div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">                    
    	<div class="panel panel-success" >
        	<div class="panel-heading">
				<div class="panel-title">Add Product</div>
            </div>
			<div class="panel-body" style="height:350px;">						
				<table class="table table-hover table-condensed table-responsive">	
					<tr>
						<td><label for="prodName">Product Name:</label></td>
						<td><form:input path="productName"/></td>
					</tr>
					<tr>	
						<td><label for="prodDesc">Product Description:</label></td>	
						<td><form:input path="prodDesc"/></td>
					</tr>
					<tr>	
						<td><label for="catId">Category ID:</label></td>	
						<td><form:select path="categoryId">
								<form:option value="0" label="-----Select-----" />
								<form:options items="${catList}" />
							</form:select>
						</td>
					</tr>
					<tr>
						<td><label for="supplierId">Supplier ID:</label></td>
						<td><form:input path="supplierId"/></td>
					</tr>
					<tr>
						<td><label for="price">Price</label></td>
						<td><form:input path="price"/></td>
					</tr>
					<tr>
						<td><label for="stock">Stock:</label></td>
						<td><form:input path="stock"/></td>
					</tr>
					<tr>
						<td><label for="pimage">Product Image:</label></td>
						<td><form:input type="file" path="pimage" /></td>
					</tr>
					<tr> 
						<td align="right" style="padding-top:15px"><input type="submit" value="Add Product" class="btn btn-success" /></td>
						<td align="left" style="padding-top:15px"><input type="reset" value="Reset" class="btn btn-warning"/></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
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
<%@include file="footer.jsp" %>
</body>
</html>