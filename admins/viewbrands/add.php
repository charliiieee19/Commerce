<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$brand_id = $_POST['brand_id'];
		$brand_title = $_POST['brand_title'];
		$sql = "INSERT INTO brands (brand_title) VALUES ('$brand_title') ";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Brand added successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member added successfully';
		// }
		//////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong while adding';
		}
	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: index.php');
?>