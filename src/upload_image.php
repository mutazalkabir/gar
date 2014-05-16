



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

$_SESSION['userid']=4;




if ($_FILES["file"]["error"] > 0)
{

    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
}
else
{





    $save_path=$UPLOADED_IMAGE_FOLDER_PATH.$_SESSION['userid']."/"; // Folder where you wanna move the file.
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



// }
//else
//{
//echo "Invalid file";
//}
?>