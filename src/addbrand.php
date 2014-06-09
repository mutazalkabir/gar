



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
session_start();


$brand_name=(string)$_POST['brand_name'];

if ($_FILES["file"]["error"] > 0)
{

    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
}
else
{

    $save_path=$UPLOADED_BRAND_IMAGE_FOLDER_PATH; // Folder where you wanna move the file.
    //chmod($save_path, 0777);
    if (!file_exists($save_path)) {
        mkdir($save_path, 0777, true);
    }
    $newfilename=genarateID().".".end(explode(".",$_FILES["file"]["name"]));
    move_uploaded_file($_FILES["file"]["tmp_name"],$save_path.$newfilename);



    $data = array();




    $insert = mysql_query("INSERT INTO brands VALUES ('','$brand_name','$newfilename')");
    if($insert==false)
        echo mysql_error();



    header('Location: ../add_brand.php');
    echo json_encode($insert);


    // exec('doya_adi_duzenle.bat');
}


?>