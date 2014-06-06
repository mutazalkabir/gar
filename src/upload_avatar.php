
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

    $save_path=$UPLOADED_IMAGE_FOLDER_PATH."avatars/"; // Folder where you wanna move the file.

    if (!file_exists($save_path)) {
        mkdir($save_path, 0777, true);
    }
    $newfilename=$user_id.".".end(explode(".",$_FILES["file"]["name"]));
    move_uploaded_file($_FILES["file"]["tmp_name"],$save_path.$newfilename);

   /* $dir = 'photos/';
    foreach(glob($dir.'*.*') as $v){
        unlink($v);
    }*/
}



echo "<img id='$newfilename' src='./storage/user_images/avatars/".$newfilename."'  class='cropper'>";


/*

$valid_exts = array('jpeg', 'jpg', 'png', 'gif');
$max_file_size = 5000 * 5000; #200kb
$nw = $nh = 200; # image with & height

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ( isset($_FILES['file']) ) {
        if (! $_FILES['file']['error'] && $_FILES['file']['size'] < $max_file_size) {
            # get file extension
            $ext = strtolower(pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION));
            # file type validity
            if (in_array($ext, $valid_exts)) {
                $path = 'uploads/' . uniqid()  . '.' . $ext;
                $size = getimagesize($_FILES['file']['tmp_name']);
                # grab data form post request
                $x = (int) $_POST['x'];
                $y = (int) $_POST['y'];
                $w = (int) $_POST['w'] ? $_POST['w'] : $size[0];
                $h = (int) $_POST['h'] ? $_POST['h'] : $size[1];
                # read image binary data
                $data = file_get_contents($_FILES['file']['tmp_name']);
                # create v image form binary data
                $vImg = imagecreatefromstring($data);
                $dstImg = imagecreatetruecolor($nw, $nh);
                # copy image
                imagecopyresampled($dstImg, $vImg, 0, 0, 1300, 500, $nw, $nh, 100, 100);
                # save image
                imagejpeg($dstImg, $path);
                # clean memory
                imagedestroy($dstImg);
              //  echo "<img src='$path' />";

            } else {
                echo 'unknown problem!';
            }
        } else {
            echo 'file is too small or large';
        }
    } else {
        echo 'file not set';
    }
} else {
    echo 'bad request!';
}*/

?>