<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 19.04.2014
 * Time: 11:56
 */
error_reporting(E_ALL ^ E_DEPRECATED);
include 'constants.php';
include 'dbconnect.php';

error_reporting(E_ALL ^ E_DEPRECATED);

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $data = array();
    $mail=(string)$_POST['mail'];

    $pass=(string)$_POST['pass'];

    $result = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND pass='$pass' AND confirm=1 limit 1");

    while($row = mysql_fetch_assoc($result)) {
        $data[] = $row;
    }

  //  session_name('gardrobeLogin');
    session_start();
    $_SESSION['user_id'] =$data[0]["user_id"];
     header('Content-Type: application/json; charset=utf-8');
     echo json_encode($data);
   //  exit();
}
else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
}

mysql_close($dbhandle);
?>