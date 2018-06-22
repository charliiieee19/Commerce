<?php 
include 'db.php';
$sort_query = "SELECT * FROM sort";
	$run_query = mysqli_query($con,$sort_query) or die(mysqli_error($con));
	echo "
		
	";
	if(mysqli_num_rows($run_query) > 0){
		while($row = mysqli_fetch_array($run_query)){
			$sid = $row["sort_id"];
			$sort_title = $row["sort_title"];
			echo "
			
					<li><a href='#' class='sort' sid='$sid'>$sort_title</a></li>
			";
		}
		
	}

?>