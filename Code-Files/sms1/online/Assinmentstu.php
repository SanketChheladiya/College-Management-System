
<?php
include_once 'dbConnection.php';
$ref=@$_GET['q'];
//$name = $_POST['name'];
//$name= ucwords(strtolower($name));
//$gender = $_POST['gender'];
$id = $_POST['id'];
$email = $_POST['email'];
$q=mysqli_query($con,"INSERT INTO assignmentstu VALUES  ('$id' , '$email')");
header("location:$ref");


?>