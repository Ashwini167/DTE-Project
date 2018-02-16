<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Update Product Details</title>
</head>
<body>
<form:form action="editProduct" modelAttribute="product">
<div class="row">
<c:forEach items="${listProducts}" var="product">
  <div class="col-sm-3 col-md-3">   
    <div class="thumbnail">
		<a href="viewProductDetail/${product.productId}"><img src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="ProductImage" width="100" height="100"/></a>
		<div class="caption">
			<h3><a href="viewProductDetail/${product.productId}">${product.productName}</a></h3>
			<p>${product.prodDesc}</p>
			<p>Rs. ${product.price}/-</p>
			<p><a href="#" class="btn btn-success" role="button">Add to cart</a><a href="#" class="btn btn-warning" role="button">Add to wishlist</a></p>	
		</div>
	</div>
  </div>
</c:forEach>
</div>
</form:form>
</body>
</html>