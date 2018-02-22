<html>
<head>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/basicStyles.css">
  <style type="text/css">
	body, html {
    	height: 100%;
	}
	.bg { 
    	background-image: url("resources/images/bgImages/MayTry4.jpg");
    	height: 100%; 
    	background-position: center;
    	background-repeat:repeat-y;
    	background-size: cover;
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
     	 			<img alt="Shopping Cart" class="brandimage" src="resources/images/shoppingcart.png" /> 
      			</a> 
    		</div>
	
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li role="presentation" class="active"><a href="home">Home<span class="sr-only">(current)</span></a></li>
        <li role="presentation"><a href="login">Login</a></li>
        <li role="presentation"><a href="register">Register</a></li>
        <li role="presentation"><a href="aboutus">About Us</a></li>
        <li role="presentation"><a href="contactus">Contact Us</a></li>
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
            <li><a href="viewProducts">View Products</a></li>
            <li><a href="addProduct">Add Product</a></li>
            <li><a href="updateProduct">Update or Delete Product</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="viewUsersList">View User List</a></li>
            <li><a href="modifyUserDetail">Modify (Update/Delete Users)</a></li>
          </ul>
        </li>
      </ul>
     </div>	
	</div>
	</nav>	
</body>
</html>