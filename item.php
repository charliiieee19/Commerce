<style>
		.zoom {
			display:inline-block;
			position: relative;
		}
		
		/* magnifying glass icon */
		.zoom:after {
			content:'';
			display:block; 
			width:33px; 
			height:33px; 
			position:absolute; 
			top:0;
			right:0;
			background:url(icon.png);
		}

		.zoom img {
			display: block;
		}

		.zoom img::selection { background-color: white; }
	</style>
	<script src='js/jquery.min.js'></script>
	<script src='js/jquery.zoom.js'></script>
	<script>
		$(document).ready(function(){
			$('#ex1_<?php echo $row['product_id']; ?>').zoom();
		});
	</script>

	<div class="modal fade" id="view_<?php echo $row['product_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class='modal-dialog'>
						<div class='modal-content'>
						<div class='modal-header'>
						<button type='button' class='close' data-dismiss='modal'>&times;</button>
						<h4 class='modal-title'>Specifications:</h4>
						</div>
						<div class='modal-body'>
								<h4 class='modal-title' align="center"><?php echo $row['product_title']; ?></h4>
								<p><br></p>
								<span class='zoom' id="ex1_<?php echo $row['product_id']; ?>">
									<img src="product_images/<?php echo $row['product_image']; ?>" style='width: auto; height: 350px;'/>
								</span>
								<hr>
								<p><?php echo $row['product_detail']; ?></p>
						</div>
						<div class='modal-footer'>
								<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>
						</div>
						</div>
				</div>				    
</div>