<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 13.06.2014
 * Time: 23:03
 */
session_start();

if(!isset($_SESSION['user_id']))
{
    $_SESSION = array();
    session_destroy();
    header("Location: ../login_register.php");
    die();
    
}
?>