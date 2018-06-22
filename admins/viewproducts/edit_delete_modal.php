<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="datatable/dataTable.bootstrap.min.css">
<div class="modal fade" id="edit_<?php echo $row['product_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Edit Product</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit.php">
				<input type="hidden" class="form-control" name="product_id" value="<?php echo $row['product_id']; ?>">
				
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Category:</label>
					</div>
					<div class="col-sm-10">
						<select name="category" class="form-control">
							<option value="<?php echo $row["product_cat"]; ?>"><?php $cat = $row["product_cat"]; if ($cat == 1) {
								echo "Mouse";
							}else if ($cat == 2) {
								echo "Keyboard";
							}else{
								echo "Ram";
							} ?></option>
							<option value="1">Mouse</option>
							<option value="2">Keyboard</option>
							<option value="3">Ram</option>
						</select>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Brand:</label>
					</div>
					<div class="col-sm-10">
						<select name="brands" class="form-control">
							<option value="<?php echo $row["product_brand"]; ?>"><?php $cat = $row["product_brand"]; if ($cat == 1) {
								echo "A4tech";
							}else if ($cat == 2) {
								echo "Rakk";
							}else if ($cat == 3) {
								echo "Logitech";
							}else if ($cat == 4) {
								echo "Kingston";
							}else if ($cat == 5) {
								echo "Asus";
							}else{
								echo "Corsair";
							} ?></option>
							<option value="1">A4tech</option>
							<option value="2">Rakk</option>
							<option value="3">Logitech</option>
							<option value="4">Kingston</option>
							<option value="5">Asus</option>
							<option value="6">Corsair</option>
						</select>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Title:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="product_title" value="<?php echo $row['product_title']; ?>" required>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Price:</label>
					</div>
					<div class="col-sm-10">
						<input name="product_price" class="form-control" value="<?php echo $row['product_price']; ?>" type="number" onkeypress="return isNumberKey(event)" required>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Image:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="product_image" value="<?php echo $row['product_image']; ?>" required>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Details:</label>
					</div>
					<div class="col-sm-10">
						<textarea style="resize: none" rows="10" cols="60" name="product_detail" required><?php echo $row['product_detail']; ?></textarea>
					</div>
				</div>
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button onclick="myFunction()" type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete_<?php echo $row['product_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Delete Member</h4></center>
            </div>
            <div class="modal-body">	
            	<p class="text-center">Are you sure you want to Delete</p>
				<h2 class="text-center"><?php echo $row['product_title'].', '.$row['product_price']; ?></h2>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <a href="delete.php?product_id=<?php echo $row['product_id']; ?>" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Yes</a>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript">
	function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode != 46 &&(charCode < 48 || charCode > 57)))
        return false;
    return true;
}
</script>