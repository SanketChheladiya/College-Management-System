<?php
include_once 'dbConnection.php';

@$email = $_POST['email'];
@$oldpass= $_POST['oldpass'];
@$newpass = $_POST['newpass'];
@$submit = $_POST['submit'];
@$submit1 = $_POST['submit1'];

if ($submit)
{
	@$query = mysqli_query($con, "SELECT `email` FROM `user` WHERE `email`='$email'");
	@$numrows = mysqli_num_rows($query);

	if(@$numrows != 0)
	{
		@$query1 = mysqli_query($con , "UPDATE `user` SET `password` = '$newpass' WHERE `email` = '$email'");
		echo '<script type="text/javascript">
				alert("Password Reset Sucessfully!");
				</script>';

	}
	else
	{
		echo '<script type="text/javascript">
				alert("You are not registered admin!");
				</script>';
	}
}

if ($submit1)
{
	@$query2 = mysqli_query($con, "SELECT `email` FROM `admin` WHERE `email`='$email'");
	@$numrows2 = mysqli_num_rows($query2);

	if(@$numrows2 != 0)
	{
		@$query2 = mysqli_query($con, "UPDATE `admin` SET `password` = '$newpass' WHERE `email` = '$email'");
		echo '<script type="text/javascript">
				alert("Password Reset Sucessfully!");
				</script>';

	}
	else
	{
		echo '<script type="text/javascript">
				alert("You are not registered Teacher!");
				</script>';
	}
}

?>
<!DOCTYPE html>
<html>
<style>
body {
  background-image: url('img2.png');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<body bgcolor="gray">
<form action="index.php" method="POST">

<table cellspacing='30' align='center' cellpadding="5">
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" name="submit" value = "GO HOME"></td><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</tr>
</div>
</table>
</form>
</body>
</html>