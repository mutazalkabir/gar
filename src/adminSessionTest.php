<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 13.06.2014
 * Time: 23:13
 */
session_start();
if(!isset($_SESSION['user_id']) && session_name()!="admin_login")/* && !$_SESSION['userid']*/ //&& !isset($_COOKIE['thegardrobeRemember']) && !$_SESSION['rememberMe'])
{
    $_SESSION = array();
    session_destroy();
    header("Location: ../adminlogin.php");
}
?>