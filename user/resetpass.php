<?php
include ("includes/db.php");
if(isset($_POST['reset-password'])) {
    $email = $_POST['email'];
    $cpass = $_POST['cpass'];
    $update_pass = "UPDATE `users` SET `user_pass`='$cpass' WHERE `user_email`='$email'";
            
    $run_reset = mysqli_query($con, $update_pass);
			if ($run_reset) {
				echo "<script>alert('password Updated Successfully')</script>";
			
                header('location: ../index.php');
			}
			else{
				echo "<script>alert('Your password doesn't match')</script>";
			}
            
}
?>