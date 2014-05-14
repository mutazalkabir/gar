<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 13.05.2014
 * Time: 23:50
 */
include "/src/constants";


if($_FILES['image']['name'])
{
    $save_path=$UPLOADED_IMAGE_FOLDER_PATH .$_SESSION['userid']; // Folder where you wanna move the file.
    $myname = strtolower($_FILES['image']['tmp_name']); //You are renaming the file here
    move_uploaded_file($_FILES['image']['tmp_name'], $save_path.$myname); // Move the uploaded file to the desired folder
}

$inser_into_db="INSERT INTO `database`.`table` (`folder_name`, `file_name`) VALUES('$save_path', '$myname'))";

?>