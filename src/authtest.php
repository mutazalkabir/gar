<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 27.05.2014
 * Time: 23:54
 */

include 'constants.php';
include 'dbconnect.php';
//error_reporting(E_ALL ^ E_DEPRECATED);

//session_name('thegardrobeLogin');
// Starting the session

//session_set_cookie_params(2*7*24*60*60);
// Making the cookie live for 2 weeks

//session_start();

if(isset($_SESSION['user_id']) && $_SESSION['user_id']) //&& !isset($_COOKIE['thegardrobeRemember']) && !$_SESSION['rememberMe'])
{
    // If you are logged in, but you don't have the tzRemember cookie (browser restart)
    // and you have not checked the rememberMe checkbox:

   // $_SESSION = array();
  //  session_destroy();
  //  header("Location: ../login_register.php");
    // Destroy the session
}
/*
else{
    header("Location: login_register.php");
}

if(isset($_GET['logoff']))
{
    $_SESSION = array();
    session_destroy();
    header("Location: ../login_register.php");
    exit;
}
/*
if($_POST['operation']=='login')
{
    // Checking whether the Login form has been submitted

    $err = array();
    // Will hold our errors

    if(!$_POST['mail'] || !$_POST['pass'])
        $err[] = 'All the fields must be filled in!';

    if(!count($err))
    {










      //  $_POST['mail'] = mysql_real_escape_string($_POST['mail']);
        $_POST['pass'] = mysql_real_escape_string($_POST['pass']);
       // $_POST['rememberMe'] = (int)$_POST['rememberMe'];

        $mail=(string)$_POST['mail'];

        $pass=(string)$_POST['pass'];

        // Escaping all input data

      //  $result = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND pass='$pass' limit 1");

    //    $row=mysql_fetch_assoc($result);

        $row = mysql_fetch_assoc(mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND pass='$pass' limit 1"));

        if($row['user_id'])
        {
            // If everything is OK login

            $_SESSION['userid']=$row['user_id'];
            $_SESSION['name'] = $row['name'];
            $_SESSION['surname'] = $row['surname'];
           // $_SESSION['rememberMe'] = $_POST['rememberMe'];

            // Store some data in the session

           // setcookie('tzRemember',$_POST['rememberMe']);
            // We create the tzRemember cookie
            header('Content-Type: application/json; charset=utf-8');
            $data[]=$row;
            echo json_encode($data);
        }
        else $err[]='Wrong username and/or password!';

    }

    if($err)
        $_SESSION['msg']['login-err'] = implode('<br />',$err);
    // Save the error messages in the session

   // header('Content-Type: application/json; charset=utf-8');
    //echo json_encode("false");
}
*/