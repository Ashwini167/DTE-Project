<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Update Category</title>
</head>
<body>
<form action="<c:url value="/updateCategory" />" method="post">
<table align="center" class="table table-hover table-condensed" style="width: 50%;">	
	<tr>
		<td colspan="2" align="center" class="success">Update Category Details</td>
	</tr>
	<tr>
		<td class="active">Category ID</td>
		<td><input type="text" id="catId" readonly name="catId" value="${categoryInfo.categoryId}"/></td>
	</tr>
	<tr>
		<td class="active">Category Name</td>
		<td><input type="text" id="catname" name="catname" value="${categoryInfo.categoryName}"/></td>
	</tr>
	<tr>
		<td class="active">Category Description</td>
		<td><input type="text" id="catDesc" name="catDesc" value="${categoryInfo.categoryDesc}"/></td>
	</tr>	
	<tr>
		<td align="center"><input type="submit" value="Update" class="btn btn-success"/></td>
		<td align="center"><input type="reset" value="Reset" class="btn btn-warning"/></td>
	</tr>
</table>

<table align="center" class="table table-striped table table-hover table-condensed"  style="width: 50%;">
	<thead>
	<tr align="center" class="success">
		<th>Category ID</th>
		<th>Category Name</th>
		<th>Category Description</th>
	</tr>
	</thead>
	<c:forEach items="${listCategories}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
	</tr>
	</c:forEach>
</table>
</form>
</body>
</html>