<?php
session_start();
include_once('includes/db.php');

if(isset($_POST['editpass'])){
	$user_id = $_POST['user_id'];
	$hashold = $_POST['hashold'];
	$oldpassword = $_POST['oldpassword'];
	$newpassword = $_POST['newpassword'];
	$confirmpassword = $_POST['confirmpassword'];
	$hashold1 = md5($oldpassword);
	$hashnewpass = md5($newpassword);

	if ($hashold==md5($oldpassword)) {
		if ($newpassword==$confirmpassword) {
			$sql = "UPDATE admins SET user_pass = '$hashnewpass' WHERE user_id = '$user_id'";


				if($con->query($sql)){
					$_SESSION['success'] = 'User Password updated successfully';
				}
				else{
					$_SESSION['error'] = 'Something went wrong in updating User';
				}
		}else{
			$_SESSION['error'] = 'New password not match';
		}
	}else{
			$_SESSION['error'] = 'Old password not match';
	}

	

}
else{
	$_SESSION['error'] = 'Select User to edit first';
}

header('location: index.php');

?>