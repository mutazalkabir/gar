<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 9.04.2014
 * Time: 21:42
 */

$username = "root";
$password = "";
$hostname = "localhost";
$dbname = "thegardrobe";

/*
$username = "a4955560_eren";
$password = "892007061335XY";
$hostname ="mysql12.000webhost.com"; //"server37.000webhost.com";
$dbname = "a4955560_eren";
*/


//connection to the database
$dbhandle = mysql_connect($hostname, $username, $password)
or die("Unable to connect to MySQL");
echo "Connected to MySQL<br>";

//select a database to work with
$selected = mysql_select_db($dbname,$dbhandle)
or die("Could not select examples");

    if ($_SERVER['REQUEST_METHOD'] === 'POST')
    {

        $str1=(string)$_POST['mail'];

        $insert = mysql_query("INSERT INTO emails VALUES('','$str1')");
		//execute the SQL query and return records
        $result = mysql_query("SELECT id, mail FROM emails");
        while ($row = mysql_fetch_array($result)) {
            echo "ID:".$row{'id'}." mail:".$row{'mail'}. //display the results
                "<br>";
        }


        var_dump("{code:900}");
        header('Location: ', true, 200);
        exit();
    }
    else
    {
       // var_dump($_GET);
        header('Content-Type: text/html; charset=utf-8');
    }

mysql_close($dbhandle);
 ?>