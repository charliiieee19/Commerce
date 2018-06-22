<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['edit'])){
		$cat_id = $_POST['cat_id'];
		$cat_title = $_POST['cat_title'];
		
		$sql = "UPDATE categories SET cat_title = '$cat_title' WHERE cat_id = '$cat_id'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Category updated successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member updated successfully';
		// }
		///////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in updating Category';
		}
	}
	else{
		$_SESSION['error'] = 'Select Category to edit first';
	}

	header('location: index.php');

?>