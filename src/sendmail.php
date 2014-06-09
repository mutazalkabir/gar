<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 29.05.2014
 * Time: 01:46
 */



include 'config/dbconfig.php';
include 'utils.php';




$mail =(string)$_GET['mail'];



$result = mysql_query("SELECT pass FROM `users` WHERE mail='$mail'");


while($row = mysql_fetch_assoc($result)) {
    $data[] = $row;

}
if(isset($data[0]["pass"]))
{






    $update = mysql_query("UPDATE users SET active='1' WHERE mail='$mail'");
    $pass =$data[0]["pass"];

    $sendto = $mail; // this is the email address collected form the form
    $ccto = "mutazalkabir@gmail.com"; //you can cc it to yourself
    $subject = "Şifre Sıfırlama"; // Subject
    $message = "Şifreniz :" .$pass;
    $header = "From: thegeo@thegardrobe.com\r\n";

// This is the function to send the email
    mail($sendto, $subject, $message, $header);

    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($result);



}
else{
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($result);
}




//echo "We've recived your contact information $to! We will be in Contact with you shortly!" ;

//mail($to, $subject, $body);

//These are the variables for the email


?>