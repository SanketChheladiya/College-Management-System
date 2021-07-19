<?php
include_once 'dbConnection.php';
ob_start();
$name = $_POST['name'];
$name= ucwords(strtolower($name));
$email = $_POST['email'];
$rollno = $_POST['rollno'];
$mob = $_POST['mob'];
$gender = $_POST['gender'];
$password = $_POST['password'];

$q3=mysqli_query($con,"INSERT INTO user VALUES  ('$name' , '$gender' , '$rollno','$email' ,'$mob', '$password')");
if($q3)
{
session_start();
$_SESSION["email"] = $email;
$_SESSION["name"] = $name;
$result = mysqli_query($con,"SELECT * FROM admin where email='" . $_POST['email'] . "'");
$row = mysqli_fetch_assoc($result);
if($row==0) 
{
                $to = $email;
                $subject = "Registration On Nirma Student Faculty Portal";
                $txt = "Your Name is = $name ,    Your ID is = $email,   Your password is : $password, Your Roll No. = $rollno 
                	If You don't like your password you can change from portal";
                $headers = "From: mychance2001@gmail.com" . "\r\n" .
                "CC: mychance2001@gmail.com";
                mail($to,$subject,$txt,$headers);
}
else
{
    echo '<script type="text/javascript">
				alert("Email Already Registered!");
				location="index.html";
				</script>';
}
header("location:headdash.php");
}
else
{
header("location:headdesh.php?q7=Email Already Registered!!!");
}
ob_end_flush();
?>