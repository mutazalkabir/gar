<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 29.05.2014
 * Time: 02:11
 */

include 'constants.php';
include 'dbconnect.php';
include 'utils.php';
error_reporting(E_ALL ^ E_DEPRECATED);

if ($_SERVER['REQUEST_METHOD'] === 'GET')
{

    $confirmation_code=(string)$_POST['$confirmation_code'];

    //TODO Generate Confirmation Code

    $update = mysql_query("UPDATE users SET confirm = 2 WHERE confirmation_code = '$confirmation_code'");
    //execute the SQL query and return records

    header("Location: login_register.php");

    exit();
}
else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
}

mysql_close($dbhandle);

?>