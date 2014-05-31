<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 19.04.2014
 * Time: 11:56
 */

include 'constants.php';
include 'dbconnect.php';
include 'utils.php';
error_reporting(E_ALL ^ E_DEPRECATED);

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
    //TODO Generate Confirmation Code

    $insert = mysql_query("INSERT INTO users VALUES('','$name','$surname','$bdate','$date','$mail','0','$gender','$pass','','','','$confirmation_code','','')");
    $user_id = mysql_insert_id();
    $insert2 = mysql_query("INSERT INTO gardrobe VALUES ('','$user_id','ilk gardrobum','genel','$date')");

    //$update = mysql_query("UPDATE users SET confirm = 1 WHERE confirmation_code = '$confirmation_code'");
    //execute the SQL query and return records

    //header('Content-Type: application/json');
    //echo json_encode($insert);


    header('Content-Type: text/plain; charset=utf-8');
    echo ("confirm_mail.html?".$confirmation_code);
die();
    //TODO Send mail

    exit();
}
else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
}

mysql_close($dbhandle);
?>