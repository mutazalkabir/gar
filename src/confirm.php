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


    $confirmation_code=(string)$_GET['confirmation_code'];
    //TODO Generate Confirmation Code

    $update = mysql_query("UPDATE users SET confirm = 1 WHERE confirmation_code = '$confirmation_code'");
    //execute the SQL query and return records
    if($update)
    {
       // sleep(3);
        header("Location: ../login_register.php");
    }
    else{
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($update);
    }

    exit();

mysql_close($dbhandle);

?>