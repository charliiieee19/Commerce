<?php
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>PcBay</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	    <link rel="stylesheet" type="text/css" href="styles.css">
	    <link rel="icon" href="icon.ico" type="ico" sizes="16x16">
	</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="/commerce" class="navbar-brand">PcBay</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="/commerce"><span class="glyphicon glyphicon-home"></span> Home</a></li>
				<li><a href="/commerce"><span class="glyphicon glyphicon-modal-window"></span> Product</a></li>
				<li style="width:300px;left:10px;top:10px;"><input type="text" class="form-control" id="search"></li>
				<li style="top:10px;left:15px"><button class="btn btn-primary" id="search_btn"><span class="glyphicon glyphicon-search"></span></button></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge">0</span></a>
					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in ₱.</div>
								</div>
							</div>
							<div class="panel-body" style="width: 397px; height: 400px; overflow-y: scroll;">
								<div id="cart_product">
								<!--<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>-->
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				
				<li><a href="customer_registration.php"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
						<!-- <li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>SignIn</a>
							<ul class="dropdown-menu">
								<div style="width:300px;">
									<div class="panel panel-primary">
										<div class="panel-heading">Login</div>
										<div class="panel-heading">
											<form onsubmit="return false" id="login">
												<label for="email">Email</label>
												<input type="email" class="form-control" name="email" id="email" required/>
												<label for="email">Password</label>
												<input type="password" class="form-control" name="password" id="password" required/>
												<p><br/></p>
												<a href="#" style="color:white; list-style:none;">Forgotten Password</a>
												<input type="submit" class="btn btn-success" style="float: right;">
												<p><br></p>
											</form>
										</div>
										<div class="panel-footer" id="e_msg"></div>
									</div>
								</div>
							</ul>
						</li> -->

						<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">Log In <span class="caret"></span></a>
	                        <ul class="dropdown-menu">
	                            <div class="col-lg-12" style="width: 300px">
	                                <div class="text-center"><br><br></div>
	                               <form onsubmit="return false" id="login">
	                                    <div class="form-group">
	                                        <label for="username">Username</label>
	                                        <input type="email" class="form-control" name="email" id="email"required>
	                                    </div>
	                                    <div class="form-group">
	                                        <label for="password">Password</label>
	                                        <input type="password" class="form-control" name="password" id="password" required>
	                                    </div>
	                                    <br>
	                                    <div class="form-group">
	                                        <div class="row">
	                                            <div class="col-xs-7">
	                                                 <a href="#" tabindex="5" class="forgot-password">Forgot Password?</a>
	                                            </div>
	                                            <div class="col-xs-4 pull-right">
	                                                <input type="submit" class="btn btn-info" value="Log In">
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="form-group">
	                                        <div class="row">
	                                            <div class="col-lg-12">
	                                                <div class="text-center">
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div id="e_msg"></div>
	                                </form>
	                            </div>
	                        </ul>
	                    </li>
			</ul>
		</div>
	</div>
</div>	
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-xs-12">
				<div id="get_category">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Categories</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
				<div id="get_brand">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Brand</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
			</div>
			<div class="col-md-8 col-xs-12">
				<div class="row">
					<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading">Products</div>
					<div class="panel-body">
						<div id="get_product">
							<!--Here we get product jquery Ajax Request-->
						</div>
						<!--<div class="col-md-4">
							<div class="panel panel-info">
								<div class="panel-heading">Samsung Galaxy</div>
								<div class="panel-body">
									<img src="product_images/images.JPG"/>
								</div>
								<div class="panel-heading">P.500.00
									<button style="float:right;" class="btn btn-danger btn-xs">AddToCart</button>
								</div>
							</div>
						</div> -->
					</div>
					<div class="panel-footer">&copy; 2018</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>				  
	</div>
	<script language="JavaScript">
	    document.onkeypress = function (event) {
	        event = (event || window.event);
	        if (event.keyCode == 123) {
	           //alert('No F-12');
	            return false;
	        }
	    }
	    document.onmousedown = function (event) {
	        event = (event || window.event);
	        if (event.keyCode == 123) {
	            //alert('No F-keys');
	            return false;
	        }
	    }
		document.onkeydown = function (event) {
	        event = (event || window.event);
	        if (event.keyCode == 123) {
	            //alert('No F-keys');
	            return false;
	        }
	    }

	    var message="Sorry, right-click has been disabled";
		function clickIE() {
			if (document.all) {
				(message);return false;
			}
		} 
		function clickNS(e) {
			if (document.layers||(document.getElementById&&!document.all)) { 
			if (e.which==2||e.which==3) {
			(message);return false;
		}
		}
		} 
		if (document.layers){
			document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;
		} 
		else{
			document.onmouseup=clickNS;document.oncontextmenu=clickIE;
		} 
		document.oncontextmenu=new Function("return false");
	</script>
</body>
</html>
