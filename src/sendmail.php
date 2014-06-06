<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 29.05.2014
 * Time: 01:46
 */

$to = "mutazalkabir@gmail.com";
$subject = "active edin";


$body = "Merhabalar";

echo "We've recived your contact information $to! We will be in Contact with you shortly!" ;

mail($to, $subject, $body);

//These are the variables for the email

$sendto = "mutazalkabir@gmail.com"; // this is the email address collected form the form
$ccto = "mutazalkabir@gmail.com"; //you can cc it to yourself
$subject = "email confirmation"; // Subject
$message = "the body of the email - this email is to confirm etc...";
$header = "From: [email]auto-confirm@mutaz.com[/email]\r\n";

// This is the function to send the email
mail($sendto, $subject, $message, $header);

?>