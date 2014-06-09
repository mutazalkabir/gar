<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 29.05.2014
 * Time: 02:11
 */

//include 'constants.php';
//include 'dbconnect.php';
include 'config/dbconfig.php';
include 'utils.php';


if ($_SERVER['REQUEST_METHOD'] == 'GET')
{

    $confirmation_code=(string)$_GET['confirmation_code'];
    //TODO Generate Confirmation Code

    $update = mysql_query("UPDATE users SET confirm = 1 WHERE confirmation_code = '$confirmation_code'");
    $result = mysql_query("SELECT user_id FROM `users` WHERE confirmation_code = '$confirmation_code'");
    //execute the SQL query and return records
    if($result)
    {
        header("Location: ../login_register.php");
        //header('Content-Type: application/json; charset=utf-8');
        //echo json_encode($result);
        die();
    }
    else
    {
        // var_dump($_GET);
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode("error");
    }


}


else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode("error");
}

?>