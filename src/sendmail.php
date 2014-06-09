<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 29.05.2014
 * Time: 01:46
 */


$confirmation_path=(string)$_GET['confirmation_path'];
$mail =(string)$_GET['mail'];





//echo "We've recived your contact information $to! We will be in Contact with you shortly!" ;

//mail($to, $subject, $body);

//These are the variables for the email

$sendto = ".$mail."; // this is the email address collected form the form
$ccto = "mutazalkabir@gmail.com"; //you can cc it to yourself
$subject = "email activasyon"; // Subject
$message = "Merhabalar <br>\r\n alt taraftaki like tıklayarak hesabınızı aktive edebilirsiniz. <br>\r\n".$confirmation_path;
$header = "From: thegeo@thegardrobe.com\r\n";

// This is the function to send the email
mail($sendto, $subject, $message, $header);

?>