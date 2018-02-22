<html>
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@include file="header.jsp" %>	
	<title>Update Category</title>	
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
<body>
<div class="container">
<form action="<c:url value="/updateCategory" />" method="post">
  <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 margin50">                    
            <div class="panel panel-success" >
                    <div class="panel-heading">
                        <div class="panel-title">Update Category</div>
                    </div>
					<div class="panel-body" style="height:190px;">	
						<table class="table table-hover table-condensed table-responsive">	
							<tr>
								<td class="active">Category ID</td>
								<td>		
								<input type="text" id="catId" readonly name="catId" value="${categoryInfo.categoryId}"/>
								</td>
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
								<td colspan="2" align="center" style="padding-top:15px"><input type="submit" value="Update" class="btn btn-success"/></td>
							</tr>
						</table>
					</div>
			</div>
	</div>
</form>

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
					<th>Category Desc</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${listCategories}" var="category">
				<tr>
					<td class="tableTextvAlign">${category.categoryId}</td>
					<td class="tableTextvAlign">${category.categoryName}</td>
					<td class="tableTextvAlign">${category.categoryDesc}</td>
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