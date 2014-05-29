
<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 13.05.2014
 * Time: 23:50
 */


include "includes.php";
session_start();

$user_id=$_SESSION['user_id'];

if ($_FILES["file"]["error"] > 0)
{

    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
}
else
{

    $save_path=$UPLOADED_IMAGE_FOLDER_PATH.$_SESSION['user_id']."/"; // Folder where you wanna move the file.

    if (!file_exists($save_path)) {
        mkdir($save_path, 0777, true);
    }
    $newfilename="avatar".".".end(explode(".",$_FILES["file"]["name"]));
    move_uploaded_file($_FILES["file"]["tmp_name"],$save_path.$newfilename);

    $dir = 'photos/';
    foreach(glob($dir.'*.*') as $v){
        unlink($v);
    }
}



echo "<img id='$newfilename' src='storage/user_images/".$user_id. "/".$newfilename."'  class='aski_uploaded_picture_holder photoTag'>";

?>