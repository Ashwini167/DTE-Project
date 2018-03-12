<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/basicStyles.css">
<title>Confirm Order</title>
</head>
<body class="bg">
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
        		<div class="panel-title">Your Orders</div>
        	</div>
        	<div class="panel-body">
        	<c:if test="${empty orderList}">
        		<h3 align="center">Your Cart is empty!</h3>
        		<a style="align:center;" href="viewProducts" class="btn btn-primary" role="button">Continue Shopping</a>        
        	</c:if>
        <c:if test="${not empty orderList}">
        		<table align="center" class="table table-condensed table-responsive" style="width:60%">
        			<tr>
        				<td>Order Id</td>
        				<td>Order Date</td>
        				<td>Total Amount Paid</td>
        				<td>Order Status</td>
        			</tr>
        			<c:forEach items="${orderList}" var="order">
        				<tr>
        				<td>${order.orderId}</td>
        				<td>${order.orderDate}</td>
        				<td>${order.totalAmount}</td>
        				<td>${order.orderStatus}</td>
        				</tr>       			
        			</c:forEach>
        		</table>
        		</c:if>
        	</div>
        </div>
     </div>
     <%@include file="footer.jsp" %>
</body>
</html>