
<div class="modal fade" id="view_<?php echo $row['user_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">View Password</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="editpass.php">
				<input type="hidden" class="form-control" name="user_id" value="<?php echo $row['user_id']; ?>">
                <input type="hidden" class="form-control" name="hashold" value="<?php echo $row['password'];  ?>">
				<div class="row form-group has-feedback">
					<div class="col-sm-2">
						<label class="control-label modal-label">Old Password:</label>
					</div>
					<div class="col-sm-10">
						<input type="password" id="oldPass" name="oldpassword" class="form-control" required>
					</div>
				</div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        <label class="control-label modal-label">New Password:</label>
                    </div>
                    <div class="col-sm-10">
                       <input type="password" id="newPass" name="newpassword" class="form-control" required>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        <label class="control-label modal-label">Confirm Password:</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="password" id="confirmPass" name="confirmpassword" class="form-control" required>
                        <br>
                        <input type="checkbox" onclick="showPass()"> Show Password
                    </div>
                </div>
                
            </div> 
			</div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="editpass" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>
<script>

function showPass() {
    var x = document.getElementById("oldPass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }

    var x = document.getElementById("newPass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }

    var x = document.getElementById("confirmPass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>