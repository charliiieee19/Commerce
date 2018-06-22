<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$category = $_POST['category'];
		$brand = $_POST['brands'];

		$product_id = $_POST['product_id'];
		$product_cat = $_POST['product_cat'];
		$product_brand = $_POST['product_brand'];
		$product_title = $_POST['product_title'];
		$product_price = $_POST['product_price'];
		$product_image = $_POST['product_image'];
		$product_detail = $_POST['product_detail'];
		$sql = "INSERT INTO products (product_cat, product_brand, product_title, product_price,product_image, product_detail) VALUES ('$category', '$brand', '$product_title', '$product_price', '$product_image', '$product_detail')";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Product added successfully';
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