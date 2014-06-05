<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 6.06.2014
 * Time: 00:13
 */

$valid_exts = array('jpeg', 'jpg', 'png', 'gif');
$max_file_size = 200 * 1024; #200kb
$nw = $nh = 200; # image with & height

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ( isset($_FILES['image']) ) {
        if (! $_FILES['image']['error'] && $_FILES['image']['size'] < $max_file_size) {
            # get file extension
            $ext = strtolower(pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION));
            # file type validity
            if (in_array($ext, $valid_exts)) {
                $path = 'uploads/' . uniqid()  . '.' . $ext;
                $size = getimagesize($_FILES['image']['tmp_name']);
                # grab data form post request
                $x = (int) $_POST['x'];
                $y = (int) $_POST['y'];
                $w = (int) $_POST['w'] ? $_POST['w'] : $size[0];
                $h = (int) $_POST['h'] ? $_POST['h'] : $size[1];
                # read image binary data
                $data = file_get_contents($_FILES['image']['tmp_name']);
                # create v image form binary data
                $vImg = imagecreatefromstring($data);
                $dstImg = imagecreatetruecolor($nw, $nh);
                # copy image
                imagecopyresampled($dstImg, $vImg, 0, 0, $x, $y, $nw, $nh, $w, $h);
                # save image
                imagejpeg($dstImg, $path);
                # clean memory
                imagedestroy($dstImg);
                echo "<img src='$path' />";

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
}
?>