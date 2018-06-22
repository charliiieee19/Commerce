<!-- Add New -->
<div class="modal fade" id="addnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Add New</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="add.php">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Category:</label>
					</div>
					<div class="col-sm-10">
						<select name="category" class="form-control">
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
						<input type="text" class="form-control" name="product_title" value="" required>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Price:</label>
					</div>
					<div class="col-sm-10">
						<input name="product_price" class="form-control" value="" type="number" onkeypress="return isNumberKey(event)" required>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label data-toggle="tooltip" data-placement="top" title="Image must be in the folder 'product_images'." class="control-label modal-label">

						Image: <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span></label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="product_image" value="" required>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Details:</label>
					</div>
					<div class="col-sm-10">
						<textarea rows="10" cols="60" name="product_detail" required></textarea>
					</div>
				</div>
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="add" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Save</a>
			</form>
            </div>

        </div>
    </div>
</div>