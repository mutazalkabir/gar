<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 5.06.2014
 * Time: 21:09
 */


    // SETTINGS
    $image_name = 'u3tlupinabff6o61.png';    // Full path and image name with extension
    $thumb_name = 'thumbnail';   // Generated thumbnail name without extension
    $thumb_side = 500;
    $min_side=993;// Desired thumbnail side size
    // END OF SETTINGS

    $image_extension = explode('.', $image_name); // I assume that images are named only following 'imagename.ext' pattern

   /* if (preg_match('/jpg|jpeg/', $image_extension[1])) {
        $src_image = imagecreatefromjpeg($image_name);
        $image_extension = 'jpg';
    } else if (preg_match('/png/', $image_extension[1])) {*/
        $src_image = imagecreatefrompng($image_name);
        $image_extension = 'png';
    //}

    $src_width = imageSX($src_image);   // Width of the original image
    $src_height = imageSY($src_image);  // Height of the original image

    //$min_side = min($src_width, $src_height);

    /*********** If you need this part uncomment it
    $ratio = $min_side / $thumb_width;
    $new_width = floor($src_width / $ratio);
    $new_height = floor($src_height / $ratio);
     **********************************************/

    $dst_image = imagecreatetruecolor($thumb_side, $thumb_side);
echo("src_width".$src_width);
echo("   ,   ");
echo("src_height".$src_height);
echo("   ,   ");
echo("min_side".$min_side);
echo("   ,   ");
/*echo("".);
echo("   ,   ");
echo("".);
echo("   ,   ");
echo("".);
echo("   ,   ");*/
//0, 0, 1300, 500, $nw, $nh, 100, 100
    imagecopyresampled($dst_image, $src_image,0 , 0, 1275, 82, $thumb_side, $thumb_side, $min_side, $min_side);

    switch ($image_extension)
    {
        case 'jpg':
            imagejpeg($dst_image, $thumb_name . '.jpg', 5);
            break;
        case 'png':
            imagepng($dst_image, $thumb_name . '.png', 5);
            break;
    }

    imagedestroy($src_image);
    imagedestroy($dst_image);

?>