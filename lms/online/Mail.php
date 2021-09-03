<?php

$to_email = $_SESSION['email'];
$subject = "Your Password Reset Link Here ......... ";
$folder_path = 'online/index.php';
$body = '<a href="' . $folder_path . '">Link text</a>';
$headers = "From: spatel19042001@gmail.com";
mail($to_email, $subject, $body, $headers);
if (mail($to_email, $subject, $body, $headers)) {
    echo "Email successfully sent to $to_email...";
} else {
    echo "Email sending failed...  ";
}

?>