<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 11.05.2014
 * Time: 13:29
 */
//error_reporting(E_ALL ^ E_DEPRECATED);
//error_reporting(E_ALL & ~E_NOTICE);
error_reporting(E_ERROR | E_WARNING | E_PARSE);

//error_reporting(E_ALL);
//ini_set('display_errors', 1);

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
$BY_CATEGORY = "category";
$BY_CITY = "city";
$BY_DATE = "date";
$BY_BRAND = "brand";
$BY_FRIENDS = "friends";
$BY_GARDROBE = "gardrobe";



$UPLOADED_IMAGE_FOLDER_PATH="../storage/user_images/";
$AVATARS_FOLDER_PATH=$UPLOADED_IMAGE_FOLDER_PATH."avatars/";

/*
$username = "a4955560_eren";
$password = "892007061335XY";
$hostname ="mysql12.000webhost.com"; //"server37.000webhost.com";
$dbname = "a4955560_eren";
*/


?>