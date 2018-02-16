<html>
<body>
<%@include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h3 align="center">Add Product</h3>

<form:form action="insertProduct" modelAttribute="product" enctype="multipart/form-data">

<table align="center" class="table table-hover table-condensed" style="width: 50%;">	
	<tr class="success">
		<td colspan="2" align="center"><label id="tableHeader">Add Product</label></td>
	</tr>
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
		<td align="center">	<input type="submit" value="Add Product" class="btn btn-success" /></td>
		<td align="center">	<input type="reset" value="Reset" class="btn btn-warning"/></td>
	</tr>
</table>

<table align="center" class="table table-striped table table-hover table-condensed"  style="width: 90%;">
	<thead>
	<tr align="center" class="success">
		<th>Product ID</th>
		<th>Product Name</th>
		<th>Product Desc</th>
		<th>Price</th>
		<th>Stock</th>
		<th>Category ID</th>
		<th>Supplier ID</th>
		<th>Action</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${listProducts}" var="product">
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.prodDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.supplierId}</td>
		<td><a href="editProduct/${product.productId}">Edit</a>&nbsp;/&nbsp;<a href="deleteProduct/${product.productId}">Delete</a></td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</form:form>
</body>
</html>