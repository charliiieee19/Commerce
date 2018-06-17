<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['edit'])){
		$user_id = $_POST['user_id'];
		$first_name = $_POST['first_name'];
		$last_name = $_POST['last_name'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$mobile = $_POST['mobile'];
		$address1 = $_POST['address1'];
		$address2 = $_POST['address2'];

		$sql = "UPDATE user_info SET first_name = '$first_name', last_name = '$last_name', email = '$email', mobile = '$mobile', address1 = '$address1', address2 = '$address2' WHERE user_id = '$user_id'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'User updated successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member updated successfully';
		// }
		///////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in updating User';
		}
	}
	else{
		$_SESSION['error'] = 'Select User to edit first';
	}

	header('location: index.php');

?>