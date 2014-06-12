<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 13.05.2014
 * Time: 23:50
 */

//create folder
/*if (!file_exists('path/to/directory')) {
    mkdir('path/to/directory', 0777, true);
}*/

include "config/dbconfig.php";
include "includes.php";
include "ImageUtils.php";

session_start();

$user_id = $_SESSION['user_id'];
/*
$data = array();
$user_id = $_SESSION['userid'];
$category_id = (string)$_POST['category_id'];
$gardrobe_id = (string)$_POST['gardrobe_id'];
$city = (string)$_POST['city'];
$place = (string)$_POST['place'];
$about = (string)$_POST['about'];
$date = new DateTime();
$date = $date->getTimestamp();
$insert = mysql_query("INSERT INTO hanger VALUES ('','$user_id','$category_id','$gardrobe_id','$about','$city','$place','$newfilename','$date')");
*/


if ($_FILES["file"]["error"] > 0) {

    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
} else {


    $newHeight=700;
    $newWidth=700;

    $save_path = $UPLOADED_IMAGE_FOLDER_PATH . $_SESSION['user_id'] . "/"; // Folder where you wanna move the file.
    //chmod($save_path, 0777);
    if (!file_exists($save_path)) {
        mkdir($save_path, 0777, true);
    }
    $newfilename = genarateID() . "." . end(explode(".", $_FILES["file"]["name"]));


    move_uploaded_file($_FILES["file"]["tmp_name"], $save_path.$newfilename);
    //move_uploaded_file($image, $save_path.$newfilename);
    // exec('doya_adi_duzenle.bat');
    $extension = explode(".", strtolower($_FILES['file']['name']));
    $image = new ImageUtils();
    $newimage=$image->ResizeToDimension(600, $save_path.$newfilename, $extension[1], $save_path.$newfilename);

/*
    $image = new ImageUtils();
    $image->load($save_path.$newfilename);

    $height = $image->getHeight();
    $width = $image->getWidth();
    if($width>$height)
    {
        $newWidth = ($width*$newHeight)/$height;
    }
    else{
        $newHeight = ($height*$newWidth)/$width;
    }





   $image->resize($newWidth,$newHeight);

    $image->save($save_path.$newfilename);
*/
}


/*

$insert = mysql_query("INSERT INTO hanger VALUES ('','$user_id','$category_id','$gardrobe_id','$about','$city','$place','$newfilename','$date')");

if($insert==false)
    echo mysql_error();
*/
//header('Content-Type: application/json');
//echo json_encode('<img src=\"/storage/user_image/.$user_id/.$newfilename\">');


echo "<img id='$newfilename' src='../storage/user_images/" . $user_id . "/" . $newfilename . "'  class='aski_uploaded_picture_holder photoTag'>";

// }
//else
//{
//echo "Invalid file";
//}
?>