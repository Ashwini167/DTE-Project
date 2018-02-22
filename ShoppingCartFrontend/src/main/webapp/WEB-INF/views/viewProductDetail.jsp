<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/basicStyles.css">
<title>Product Details</title>
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
<form:form action="editProduct" modelAttribute="product">
	<table align="center" class="table table-hover table-condensed"  style="width: 90%;">
	<tr align="center">
		<td class="tableTextvAlign" rowspan="7"><img src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="ProductImage" width="100" height="100"/> </td>
	</tr>
	<tr>
		<td>Product</td>
		<td><b>${product.productName}</b></td>
	</tr>
	<tr>
		<td>About the product</td>
		<td>${product.prodDesc}</td>
	</tr>
	<tr>	
		<td>Product price</td>
		<td>${product.price}</td>
	</tr>
	<tr>		
		<td>Available Quantity</td>
		<td>${product.stock}</td>
	</tr>
	<tr>
		<td><b>Select quantity here: </b></td>
		<td><form:select id="selectedQuantity" path="stock">
			<form:option value="0" label="-----Select-----" />
			<form:options items="${quantityValues}" />
			</form:select>
		</td>
	</tr>
	<tr>
		<td align="right"><a href="#" class="btn btn-success" role="button">Add to cart</a></td>
		<td align="left"><a href="#" class="btn btn-warning" role="button">Add to wishlist</a></td>
	</tr>			
</table>
</form:form>
</div>
</body>
</html>