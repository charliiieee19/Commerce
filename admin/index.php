<?php 
session_start();
if (isset($_SESSION["user_email"])) {
	header("location: home");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Admin Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="icon.ico"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="post" action="index.php">
					<span class="login100-form-title">
						Admin Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" name="login">
							Login
						</button>
					</div>
					<div class="text-center p-t-50">
						<a class="txt2" href="/commerce">
							Back to Shop
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
					<div class="container-login100-form-btn">
					</div>
				</div>
			</div>
			
			

			
			<!--===============================================================================================-->	
			<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
			<!--===============================================================================================-->
			<script src="vendor/bootstrap/js/popper.js"></script>
			<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
			<!--===============================================================================================-->
			<script src="vendor/select2/select2.min.js"></script>
			<!--===============================================================================================-->
			<script src="vendor/tilt/tilt.jquery.min.js"></script>
			<script >
				$('.js-tilt').tilt({
					scale: 1.1
				})
			</script>
			<!--===============================================================================================-->
			<script src="js/main.js"></script>

		</body>
		</html>
		<?php 
		include("includes/db.php"); 
		if(isset($_POST['login'])){
			$email = mysqli_real_escape_string($con, $_POST['email']);
			$pass = mysqli_real_escape_string($con, $_POST['password']);
			$hashpass = md5($pass);
			$sel_user = "select * from admins where user_email='$email' AND user_pass='$hashpass'";
			$run_user = mysqli_query($con, $sel_user); 
			$check_user = mysqli_num_rows($run_user); 
			if($check_user==1){
				$_SESSION['user_email']=$email; 
				echo "<script>window.open('home','_self')</script>";
			}
			else {
				unset($_SESSION["user_email"]);
				echo "<script>alert('Password or Email is wrong, try again!')</script>";
			}
		}
		?>