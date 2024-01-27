<?php
require_once 'dbconfig/config.php';
$rn=$_GET['rn'];
$ques=$_GET['ques'];
$rep=$_GET['rep'];

require_once 'dbconfig/config.php';

if (isset($_POST['submit'])) {
    $id = $_POST['id'];
    $question = $_POST['question'];
    $reply = $_POST['reply'];

    $sql = "UPDATE chatbot_hints SET question=?, reply=? WHERE id=?";
    $stmt = $db->prepare($sql);

    if ($stmt->execute([$question, $reply, $id])) {
        echo "<script>alert('Record Updated');  window.location.href = 'qna.php';</script>";
        // header("Refresh:0; url=http://localhost:7882/qna.php");
        exit();
    } else {
        echo "Failed To Update Record";
    }
}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Update</title>
<style >
	input{
		font-size: 1vw;
	}

	table{
		color: white;
		border-radius: 19px;
		
		background:linear-gradient(blue,black,blue);
	}
	#button 
	{
		background-color:rgba(0,0,0,0.6);
		color: white;
		height: 32px;
		width: 125px;
		border-radius: 25px;
		font-size: 16px;
	}
	body{
		background:rgba(200, 180, 196, 0.72);

		background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;


	}
</style>


</head>
<br><br><br><br><br><br>

<form action="" method="POST">
	<table border="0" bgcolor="black" align="center" cellspacing="50">
			<div id="main-wrapper">
		<center>
			
			<div class="imgcontainer">
			<img src="image/bot_avatar.png" class="avatar"/>
		</center>
	</div>
	
		<tr>
			<td>Id</td>
			<td><input type="text" value="<?php echo "$rn" ?>" name="id" required></td>

		</tr>
		<tr>
			<td>Question</td>
			<td><input type="text" value="<?php echo "$ques" ?>" name="question" required></td>
			
		</tr>
		
		<tr>
			<td>Reply</td>
			<td><input type="text" value="<?php echo "$rep" ?>" name="reply" required></td>
			
		</tr>
	<tr>
	<td  colspan="2" align="center"><input type="submit" id=button name="submit" value="Update Details"/></td>
	</tr>


</table>
	</form>


</body>
</html>
