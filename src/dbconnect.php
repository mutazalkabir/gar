<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 11.05.2014
 * Time: 15:52
 */


//connection to the database
$dbhandle = mysql_connect($hostname, $username, $password)
or die("Unable to connect to MySQL");


//select a database to work with
$selected = mysql_select_db($dbname,$dbhandle)
or die("Could not select examples");
?>