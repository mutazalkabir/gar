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


if ($_SERVER['REQUEST_METHOD'] == 'POST')
{

    $confirmation_code=(string)$_POST['confirmation_code'];
echo($confirmation_code);
    //TODO Generate Confirmation Code

    $update = mysql_query("UPDATE users SET confirm = 1 WHERE confirmation_code = '$confirmation_code'");
    //execute the SQL query and return records
    if($update)
    {
       // sleep(3);
        //header("Location: ../login_register.php");
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode(true);
    }
    else{
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode(false);
    }


}


else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
    echo "aa";
}

?>