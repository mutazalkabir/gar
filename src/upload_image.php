



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

include "includes.php";

$_SESSION['userid']=75;

$data = array();
$user_id = $_SESSION['userid'];
$category_id = (string)$_POST['category_id'];
$gardrobe_id = (string)$_POST['gardrobe_id'];
$city = (string)$_POST['city'];
$place = (string)$_POST['place'];
$about = (string)$_POST['about'];
$date = new DateTime();
$date = $date->getTimestamp();


if ($_FILES["file"]["error"] > 0)
{

    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
}
else
{

    $save_path=$UPLOADED_IMAGE_FOLDER_PATH.$_SESSION['userid']."/"; // Folder where you wanna move the file.
    //chmod($save_path, 0777);
    if (!file_exists($save_path)) {
        mkdir($save_path, 0777, true);
    }
    $newfilename=genarateID().".".end(explode(".",$_FILES["file"]["name"]));
    move_uploaded_file($_FILES["file"]["tmp_name"],$save_path.$newfilename);
    // exec('doya_adi_duzenle.bat');

    $dir = 'photos/';
    foreach(glob($dir.'*.*') as $v){
        unlink($v);
    }
}




$insert = mysql_query("INSERT INTO hanger VALUES ('','$user_id','$category_id','$gardrobe_id','$about','$city','$place','$newfilename','$date')");

if($insert==false)
    echo mysql_error();

header('Content-Type: application/json');
echo json_encode($insert);


// }
//else
//{
//echo "Invalid file";
//}
?>