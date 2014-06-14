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
    $result = mysql_query("SELECT * FROM admins WHERE user_name='$username'  AND pass = '$password'");

    if($result==false)
    {

        header('Content-Type: application/json');
        echo json_encode($result);

    }
    else{
        while($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }

       // session_name("admin_login");
        session_start();
        $_SESSION['user_id'] =$data[0]["user_id"];
        $_SESSION['user_name'] =$data[0]["user_name"];
        header('Location: ../adminoperations.php');
        die();
        echo json_encode($data);


    }

}

else
{
    // var_dump($_GET);
    header('Location: ../adminlogin.php');
    die();
}

//mysql_close($dbhandle);
?>