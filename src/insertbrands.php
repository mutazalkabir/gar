<?php
/**
 * Created by PhpStorm.
 * User: mutaz_alkabir
 * Date: 08.06.2014
 * Time: 14:55
 */

include 'constants.php';

include 'config/dbconfig.php';
$data = array();

$brand_name = (string)$_GET['brand_name'];
$brand_pic = (string)$_GET['brand_pic'];


$insert = mysql_query("INSERT INTO brands VALUES ('','$brand_name','$brand_pic')");
if($insert==false)
    echo mysql_error();



header('Content-Type: application/json');
echo json_encode($insert);