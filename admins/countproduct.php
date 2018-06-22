<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "scommerce";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}



$result = mysqli_query($con, "select count(1) FROM products");
$row = mysqli_fetch_array($result);

$_SESSION["product_rows"] = $row[0];

echo $_SESSION["product_rows"];

?>