<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 29.05.2014
 * Time: 00:54
 */

session_start();
session_destroy();
$_SESSION = array();
echo "ok";
?>