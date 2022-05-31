<?php include('includes/db.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Password Reset</title>
    <link rel="stylesheet" type="text/css" href="styles/style.css" media="all" />
</head>
<body>
	<form class="login-form" action="resetpass.php" method="post">
		<h2 class="form-title">Reset password</h2>
		<!-- form validation messages -->
		<div class="form-group">
			<label>Your email address</label>
			<input type="email" name="email">
		<br>
		Enter new password: <input type="password" name="pass" >
		<br>
		Confirm your password: <input type="password" name="cpass" >
		</div>
		<br>
		<div class="form-group">
			<button type="submit" name="reset-password" class="login-btn">Submit</button>
		</div>

	</form>
</body>
</html>