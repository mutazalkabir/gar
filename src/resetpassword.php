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


echo ($_SERVER['REQUEST_METHOD']);
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    $data = array();
    $confirmationCode=mysql_real_escape_string((string)$_GET['confirmation_code']);

    echo $confirmationCode,PHP_EOL;
    $mail=(string)$_GET['mail'];
    echo $mail,PHP_EOL;
    $pass=mysql_real_escape_string((string)$_GET['login_password']);
    echo $pass,PHP_EOL;

    $result = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND confirmation_code='$confirmationCode' AND confirm=1 limit 1");

    while($row = mysql_fetch_assoc($result)) {
        $data[] = $row;

    }
    if(isset($data[0]["user_id"]))
    {

        $update = mysql_query("UPDATE users SET active='1', pass='$pass' WHERE mail='$mail'");

        header('Location: ../login_register.php');
       die();
    }
    else{
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode(false);
    }

}

else
{
    // var_dump($_GET);
    header('Location: ../login_register.php');
    die();
}

//mysql_close($dbhandle);
?>