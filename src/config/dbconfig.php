<?php

error_reporting(E_ALL ^ E_DEPRECATED);
//error_reporting(E_ALL & ~E_NOTICE);
//error_reporting(E_ERROR | E_WARNING | E_PARSE);

error_reporting(E_ALL);
ini_set('display_errors', 1);


$username = "root";
$password = "";
$hostname = "localhost";
$dbname = "thegardrobe";
/*
$username = "thegecom_mutaz";
$password = "123qwe**";
$hostname = "localhost";
$dbname = "thegecom_tehgardrobe";

*/

define('DB_SERVER',$hostname );
define('DB_USERNAME',$username );
define('DB_PASSWORD', $password);
define('DB_DATABASE', $dbname);

$dbhandle = mysql_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD) or die("Unable to connect to MySQL");
$selected = mysql_select_db(DB_DATABASE,$dbhandle) or die("Could not select examples");
mysql_query("set names 'utf8'");
/*
//connection to the database
$dbhandle = mysql_connect($hostname, $username, $password)
or die("Unable to connect to MySQL");


//select a database to work with
$selected = mysql_select_db($dbname,$dbhandle)
or die("Could not select examples");
*/
?>
