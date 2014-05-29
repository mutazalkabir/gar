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
    $bdate = new DateTime((string)$_POST['bdate']);
    $bdateTS = $bdate->getTimestamp();
    $date = new DateTime();
    $date=$date->getTimestamp();
    $confirmation_code = genarateID();
    //TODO Generate Confirmation Code

    $insert = mysql_query("INSERT INTO users VALUES('','$name','$surname','$bdateTS','$date','$mail','0','$gender','$pass','','','','$confirmation_code','','')");
    $update = mysql_query("UPDATE users SET confirm = 1 WHERE confirmation_code = '$confirmation_code'");
    //execute the SQL query and return records
    header('Content-Type: application/json');
    echo json_encode($insert);
 /*   var_dump($insert);
    header('Location: ', true, 200);*/
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