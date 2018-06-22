<?php
	session_start();
	include_once('connection.php');

	if(isset($_GET['brand_id'])){
		$sql = "DELETE FROM brands WHERE brand_id = '".$_GET['brand_id']."'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Brand deleted successfully';
		}
		////////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member deleted successfully';
		// }
		/////////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in deleting brand';
		}
	}
	else{
		$_SESSION['error'] = 'Select brand to delete first';
	}

	header('location: index.php');
?>