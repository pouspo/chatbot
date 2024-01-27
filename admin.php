<?php
	session_start();
	require_once 'dbconfig/config.php';
	
    if(isset($_POST['admin_login']))
	{
		$username=$_POST['username'];
		$password=$_POST['password'];
		
		$sql = "SELECT * FROM admn WHERE name='$username' AND password='$password'";
		
		$stmt = $db->prepare($sql);
		$stmt->execute();
		if( $stmt->rowCount() > 0)
		{
			// valid
			$_SESSION['username']= $username;
			header('location:adminlogin.php');
		}
		else
		{
			// invalid
			echo '<script type="text/javascript"> alert("Invalid credentials") </script>';
		}
		
	}
	
?>
<!DOCTYPE html>
<html>
<head>


<title>Login as Admin</title>
<link rel="stylesheet" href="css/stylex.css">
<style>
body 
{
  background-image: url('https://www.forbes.com/advisor/wp-content/uploads/2022/06/Image_-_Chatbot.jpeg.jpg' );
   background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>



</head>

<br>
<br>
<br>
<br>
<br>
<br>


<!-- <body style="background-color:#bdc3c7"> -->
	
	<div id="main-wrapper">
		<center>
			<div class="imgcontainer">
			<img src="image/admin.png" class="avatar"/>
		</center>
	
		<form class="myform" action="admin.php" method="post">

			<div class="inner_container">

			<label><b id="un">Username:</b></label><br>
			<input name="username" id="us" type="text" class="inputvalues" placeholder="Enter Username here..." required/><br>

			<label><b id="adminp">Password:</b></label><br>
			<input name="password" type="password" class="inputvalues" id="adminpass" placeholder="Type your password" required/><br>
			
			<input name="admin_login" type="submit" id="login_btn" value="Login"/><br>

			<!-- <a href="adminlogin.php"><input  type="button" id="admin_btn" value="LogIn"/></a><br> -->
			<a href="index.php"><input type="button" id="back_btn" value="Back"/></a>

		
			
		
		</div>

		</form>
		
	</div>
</body>
</html>

