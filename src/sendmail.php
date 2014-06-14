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



$result = mysql_query("SELECT confirmation_code FROM `users` WHERE mail='$mail'");


while($row = mysql_fetch_assoc($result)) {
    $data[] = $row;

}
if(isset($data[0]["confirmation_code"]))
{






    $update = mysql_query("UPDATE users SET active='1' WHERE mail='$mail'");
    $confirmation_code =$data[0]["confirmation_code"];

    $confirmation_path="http://www.thegardrobe.com/password_reset.php?confirmation_code=".$confirmation_code;

    $sendto = $mail; // this is the email address collected form the form
    $ccto = "mutazalkabir@gmail.com"; //you can cc it to yourself
    $subject = "Şifre Sıfırlama"; // Subject
    $message = "Merhabalar \r\n Güvenlik Kodu : " .$confirmation_code."\r\n Alt taraftaki linke tıklayarak hesabınızı aktive edebilirsiniz. \r\n".$confirmation_path;
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