<head> 
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Handlee" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Amaranth" rel="stylesheet" type="text/css"> 
  <c:url value="/resources/css/basicStyles.css" var="cssUrl"></c:url>
  <c:url value="/resources/images" var="imagesUrl"></c:url>
  <link rel="stylesheet" href="${cssUrl}" type="text/css"> 
  <style type="text/css">
	body, html {
    	height: 100%;
	}
	.bg { 
    	background-image: url("resources/images/bgImages/Final.jpg");
    	height: 100%; 
    	background-position: center;
    	background-repeat:repeat-y;
    	background-size: cover;
	}	
	
	.navbar-inverse .navbar-nav>li>a {
    	color: #ffffff;
    	font-family: 'Amaranth', sans-serif;
	}
	.bigFont {
		font-size: 28px;
	}
	
	</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
 		<div class="container-fluid">
    		<div class="navbar-header">
      			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        			<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
    	    		<span class="icon-bar"></span>
     	 		</button>
     	 		<a class="navbar-brand" href="#">     	 		 
     	 			<img alt="Shopping Cart" class="brandimage" src="${imagesUrl}/shoppingcart.png" />
      			</a> 
    		</div>
	
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	  <ul class="nav navbar-nav navbar-left">
	  	<li role="presentation"><a href="#" class="bigFont">&nbsp;&nbsp;ShoppingCart.com</a></li>
	  </ul>		
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${!loggedIn}">
        <li role="presentation"><a href="home">Home<span class="sr-only">(current)</span></a></li>
        <li role="presentation"><a href="login">Login</a></li>
        <li role="presentation"><a href="register">Register</a></li>
        <li role="presentation"><a href="contactus">Contact Us</a></li>
      </c:if>  
      <c:if test="${loggedIn}"> 
      <c:if test="${role=='ROLE_ADMIN'}">
      	<li role="presentation"><a href="home">Home<span class="sr-only">(current)</span></a></li> 
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="addCategory">Add New Category</a></li>
            <li><a href="updateCategoryDetails">Update or Delete Category</a></li>            
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Product<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="addProduct">Add Product</a></li>
            <li><a href="updateProduct">Update or Delete Product</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="viewUsersList">View/Modify User List</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Supplier<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="viewSupplierAddPage">Add Supplier</a></li>
            <li><a href="viewSupplierDetails">View Supplier List</a></li>
            <li><a href="viewSupplierDetails">Modify (Update/Delete Suppliers)</a></li>
          </ul>
        </li> 
        <c:url value="/logout" var="logout"></c:url>
        <li role="presentation"><a href="${logout}">Log Out<span class="sr-only">(current)</span></a></li>
        </c:if>
        <c:if test="${role=='ROLE_USER'}">
        <c:url value="/editUser/${username}" var="editUrl"></c:url>
        	<li role="presentation"><a href="home">Home<span class="sr-only">(current)</span></a></li> 
        	<li><a href="viewProducts">View Products</a></li>
        	<li><a href="viewCart">Cart</a></li>
        	<li><a href="viewOrders">Order History</a></li>
        	<li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          			<i class="fa fa-user"></i>&nbsp;&nbsp;Hi, ${nameOfUser}!<span class="caret"></span>
	          	</a>        	
        		<ul class="dropdown-menu">
            		<li><a href="${editUrl}">Edit Profile</a></li>
	            	<li><a href="logout">Logout</a></li>
          		</ul>
          	</li>
        </c:if>
        </c:if>               
      </ul>
     </div>	
	</div>
	</nav>	
</body>