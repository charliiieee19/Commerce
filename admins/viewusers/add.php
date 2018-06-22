<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$first_name = $_POST['first_name'];
		$last_name = $_POST['last_name'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$confirmPass = $_POST['confirmPassword'];
		$mobile = $_POST['mobile'];
		$address1 = $_POST['address1'];
		$address2 = $_POST['address2'];
		$hashpass = md5($password);

		if ($password==$confirmPass) {
				$sql = "INSERT INTO user_info (first_name, last_name, email, password, mobile, address1, address2) VALUES ('$first_name', '$last_name', '$email', '$hashpass', '$mobile', '$address1', '$address2')";

						
						if($conn->query($sql)){
							$_SESSION['success'] = 'User added successfully';
						}
						else{
							$_SESSION['error'] = 'Something went wrong while adding';
						}



		}else{
			$_SESSION['error'] = 'Password is not match.';
		}

		
	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: index.php');
?>