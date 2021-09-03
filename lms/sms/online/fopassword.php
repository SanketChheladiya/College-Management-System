<?php
include_once 'dbConnection.php';
if(isset($_POST['submit']))
{
    $email_id = $_POST['email'];
    $result = mysqli_query($con,"SELECT * FROM user where email='" . $_POST['email'] . "'");
    $row = mysqli_fetch_assoc($result);
  $email=$row['email'];
  $password=$row['password'];
  if($email==$email_id) 
  {
                $to = $email;
                $subject = "Password";
                $txt = "Your password is : $password.";
                $headers = "From: mychance2001@gmail.com" . "\r\n" .
                "CC: mychance2001@gmail.com";
                mail($to,$subject,$txt,$headers);
      }
        else{
          echo 'invalid userid';
        }
}
if(isset($_POST['submit1']))
{
  $email_id = $_POST['email'];
    $result = mysqli_query($con,"SELECT * FROM admin where email='" . $_POST['email'] . "'");
    $row = mysqli_fetch_assoc($result);
  $email=$row['email'];
  $password=$row['password'];
  if($email==$email_id) 
  {
                $to = $email;
                $subject = "Password";
                $txt = "Your password is : $password.";
                $headers = "From: mychance2001@gmail.com" . "\r\n" .
                "CC: mychance2001@gmail.com";
                mail($to,$subject,$txt,$headers);
      }
        else{
          echo 'invalid userid';
        }
}
?>
<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">
 input{
 border:1px solid olive;
 border-radius:5px;
 }
 h1{
  color:darkgreen;
  font-size:22px;
  text-align:center;
 }

</style>
</head>
<body>
<h1>Forgot Password<h1>
<form action='index.php' method='post'>
<tr><td></td><td><input type='submit' name='submit' value='Go HoME'/></td></tr>
</table>
</form>
</body>
</html>