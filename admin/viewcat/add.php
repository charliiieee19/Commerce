<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$cat_id = $_POST['cat_id'];
		$cat_title = $_POST['cat_title'];
		$sql = "INSERT INTO categories (cat_title) VALUES ('$cat_title')";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Member added successfully';
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