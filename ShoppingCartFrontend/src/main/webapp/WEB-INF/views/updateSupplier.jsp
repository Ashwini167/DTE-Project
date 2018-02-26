<html>
<head>	
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@include file="header.jsp" %>	
	<title>Update Supplier Details</title>
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
<c:url value="/updateSupplier" var="actionString" />
<div class="container">
<form:form action="${actionString}" modelAttribute="supplier" method="POST" >
<div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">                    
	<div class="panel panel-success" >
    	<div class="panel-heading">
        	<div class="panel-title">Update Supplier Details</div>
       	</div>
		<div class="panel-body" style="height:400px;">
			<table class="table table-hover table-condensed table-responsive">
				<tr>
					<td><label for="supplierId">Supplier ID:</label></td>
					<td><form:input path="supplierId"/></td>
				</tr>
				<tr>
					<td><label for="supplierName">Supplier Name:</label></td>
					<td><form:input path="supplierName" /></td>
				</tr>
				<tr>	
					<td><label for="supplierMobile">Supplier Mobile Number</label></td>	
					<td><form:input path="supplierMobileNo"/></td>
				</tr>
				<tr> 
					<td colspan="2" align="center" style="padding-top:15px"><input type="submit" value="Update Supplier Details" class="btn btn-success" /></td>
				</tr>
			</table>		
		</div>            
    </div>
</div>
</form:form>
</div>
</body>
</html>