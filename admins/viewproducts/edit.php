<?php
	session_start();
	include_once('connection.php');







	if(isset($_POST['edit'])){

		$category = $_POST['category'];
		$brand = $_POST['brands'];

		$product_id = $_POST['product_id'];
		$product_cat = $_POST['product_cat'];
		$product_brand = $_POST['product_brand'];
		$product_title = $_POST['product_title'];
		$product_price = $_POST['product_price'];
		$product_image = $_POST['product_image'];
		$product_detail = $_POST['product_detail'];

		$sql = "UPDATE products SET product_cat = '$category', product_brand = '$brand', product_title = '$product_title', product_price = '$product_price', product_image = '$product_image', product_detail = '$product_detail' WHERE product_id = '$product_id'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Member updated successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member updated successfully';
		// }
		///////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in updating member';
		}
	}
	else{
		$_SESSION['error'] = 'Select member to edit first';
	}

	header('location: index.php');

?>