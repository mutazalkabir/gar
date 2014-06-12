<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 12.06.2014
 * Time: 01:28
 */
include "ImageUtils.php";
include "includes.php";



$items = new RecursiveIteratorIterator(
    new RecursiveDirectoryIterator('../storage/user_images/17'),
    RecursiveIteratorIterator::SELF_FIRST
);

foreach($items as $item) {
    $image = new ImageUtils();
   // echo $item, PHP_EOL;
    $item2 = substr($item, 2);
    //echo $item, PHP_EOL;
    $extension = "jpg";
    $newimage=$image->ResizeToDimension(600, $item, "jpg",$item);
}
?>