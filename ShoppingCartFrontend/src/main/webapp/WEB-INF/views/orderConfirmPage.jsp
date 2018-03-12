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
	<c:url value="/thankYou" var="actionString"></c:url>
	<form:form action="${actionString}" modelAttribute="order">
		<div class="panel panel-success">
			<div class="panel-heading">
        		<div class="panel-title">Please confirm your order</div>
        	</div>
        	<div class="panel-body">
					
			<table class="table table-hover table-condensed table-responsive" style="width: 60%;">
				<tr>
					<td>Product</td>
					<td>Quantity</td>
					<td>SubTotal</td>
					<td>Action</td>
				</tr>				
				<c:forEach items="${cartList}" var="cart">
					<c:set var = "productIdFromCart" value = "${cart.productId}"/>
					<c:forEach items="${productDetails}" var="prod">
						<c:set var = "productIdFromProductList" value = "${prod.key}"/>
						<c:if test="${productIdFromCart==productIdFromProductList}">
							<c:set var="productName" value="${prod.value}" />
						</c:if>
					</c:forEach>
					<tr align="center">
						<td>${productName}</td>
						<td>${cart.quantity}</td>
						<td>Rs.${cart.subTotal}</td>
						<c:url value="/editCart/${cart.cartItemId}" var="editString"></c:url>
						<c:url value="/deleteCart/${cart.cartItemId}" var="deleteString"></c:url>
						<td align="right"><a href="${editString}" class="btn btn-success" role="button">Edit Cart</a>&nbsp;&nbsp;<a href="${deleteString}" class="btn btn-warning" role="button">Remove from cart</a></td>
					</tr>
				</c:forEach>
					<tr align="right">
					<td colspan="3" align="right"><b>Grand Total</b></td>
					<td colspan="1" align="right"><b>${grandTotal}</b></td>
					</tr>
			</table>
			<div class="well">
				Payment Options
			</div>
			   	<div class="row">
			   		<div class="col-lg-6">
                		<div class="input-group">
                    		<span class="input-group-addon beautiful">	
								Choose your payment method
									<form:radiobutton path="transactionType" value="CC" />Credit Card
									<form:radiobutton path="transactionType" value="DC" />Debit Card
									<form:radiobutton path="transactionType" value="eW" />e-Wallets
									<form:radiobutton path="transactionType" value="COD" />Cash On delivery
							</span>
						</div>
						<div class="input-group">
							<form:textarea path="shippingAddress" placeholder="Please specify where your order is to be delivered" />							
						</div>
						<div class="input-group">
							<form:textarea path="billingAddress" placeholder="Please specify the billing address" />							
						</div>
					</div>
				</div>
				<input type="submit" value="Proceed to checkout" class="btn btn-lg btn-primary" style="align:right;"/>	
			</div>			
		</div>
	</form:form>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>