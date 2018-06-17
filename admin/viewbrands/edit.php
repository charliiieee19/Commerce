<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['edit'])){
		$brand_id = $_POST['brand_id'];
		$brand_title = $_POST['brand_title'];
		$sql = "UPDATE brands SET brand_title = '$brand_title' WHERE brand_id = '$brand_id'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Brand updated successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member updated successfully';
		// }
		///////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in updating brand';
		}
	}
	else{
		$_SESSION['error'] = 'Select brand to edit first';
	}

	header('location: index.php');

?>