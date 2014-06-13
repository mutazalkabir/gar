<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 19.04.2014
 * Time: 11:56
 */

//include 'constants.php';
//include 'dbconnect.php';
include 'config/dbconfig.php';
include 'utils.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST')
{

    $mail=(string)$_POST['mail'];
    $name=(string)$_POST['name'];
    $surname=(string)$_POST['surname'];
    $pass=(string)$_POST['pass'];
    $gender=(string)$_POST['gender'];

    $bdate =intval((string)$_POST['bdate'])/1000;
    $date = new DateTime();
    $date=$date->getTimestamp();
    $confirmation_code = genarateID();


    $insert = mysql_query("INSERT INTO users VALUES('','$name','$surname','$bdate','$date','$mail','0','$gender','$pass','','','avatar.png','$confirmation_code','','','0','','')");
    $user_id = mysql_insert_id();
    $insert2 = mysql_query("INSERT INTO gardrobe VALUES ('','$user_id','ilk gardrobum','genel','$date')");



    //$update = mysql_query("UPDATE users SET confirm = 1 WHERE confirmation_code = '$confirmation_code'");
    //execute the SQL query and return records

    //header('Content-Type: application/json');
    //echo json_encode($insert);



    $confirmation_path="http://www.thegardrobe.com/src/confirm.php?confirmation_code=".$confirmation_code;





//echo "We've recived your contact information $to! We will be in Contact with you shortly!" ;

//mail($to, $subject, $body);

//These are the variables for the email

    $sendto = $mail; // this is the email address collected form the form
    $ccto = ""; //you can cc it to yourself
    $subject = "TheGardrobe Kullanıcı Aktivasyon"; // Subject
    $message = "Merhabalar \r\n Alt taraftaki linke tıklayarak hesabınızı aktive edebilirsiniz. \r\n".$confirmation_path;
    $header = "From: thegeo@thegardrobe.com\r\n";

// This is the function to send the email
    mail($sendto, $subject, $message, $header);




    header('Content-Type: text/plain; charset=utf-8');
    echo ($sendto."ok".$message);
    //mysql_close($dbhandle);

    //TODO Send mail


}
else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
}


?>