<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 29.05.2014
 * Time: 00:54
 */

session_start();
unset($_SESSION['user_id']);
$_SESSION = array();
session_destroy();

header("Location: ../adminlogin.php");
die();

?>