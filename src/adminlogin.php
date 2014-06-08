<?php
/**
 * Created by PhpStorm.
 * User: mutaz_alkabir
 * Date: 08.06.2014
 * Time: 14:48
 */

//include 'constants.php';
//include 'dbconnect.php';
include 'config/dbconfig.php';
include 'utils.php';



if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $data = array();
    $username=(string)$_POST['username'];

    $password=(string)$_POST['password'];

    $result = mysql_query("SELECT * FROM `admins` WHERE user_name='$username' AND pass='$password' AND confirm=1 limit 1");

    while($row = mysql_fetch_assoc($result)) {
        $data[] = $row;

    }

        session_name("admin_login");
        session_start();

        $update = mysql_query("UPDATE users SET active='1' WHERE mail='$mail'");
        $_SESSION['user_id'] =$data[0]["user_id"];
        $_SESSION['user_name'] =$data[0]["user_name"];
        header('Location : adminoperations.php');
        echo json_encode($data);



}

else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
    echo "aa";
}

//mysql_close($dbhandle);
?>