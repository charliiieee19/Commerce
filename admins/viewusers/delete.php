<?php
	session_start();
	include_once('connection.php');

	if(isset($_GET['user_id'])){
		$sql = "DELETE FROM user_info WHERE user_id = '".$_GET['user_id']."'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'User deleted successfully';
		}
		////////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member deleted successfully';
		// }
		/////////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in deleting User';
		}
	}
	else{
		$_SESSION['error'] = 'Select User to delete first';
	}

	header('location: index.php');
?>