<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 19.04.2014
 * Time: 11:56
 */

include 'src/constants.php';
include 'src/dbconnect.php';


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
    $insert = mysql_query("INSERT INTO user VALUES('','$name','$surname','$bdateTS','$date','$mail','0','$gender','$pass','','','')");
    //execute the SQL query and return records
    header('Content-Type: application/json');
    echo json_encode($insert);
 /*   var_dump($insert);
    header('Location: ', true, 200);*/
    exit();
}
else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
}

mysql_close($dbhandle);
?>