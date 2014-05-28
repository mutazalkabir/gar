<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 16.05.2014
 * Time: 01:53
 *
 *
 */

function genarateID() {
    $allowed_chars = 'abcdefghijklmnopqrstuvwxz0123456789';
    $allowed_count = strlen($allowed_chars);
    $code = null;
    $code_length = 16;

    while($code === null) {
        $code = '';
        for($i = 0; $i < $code_length; ++$i) {
            $code .= $allowed_chars{mt_rand(0, $allowed_count - 1)};
        }
    }
    return $code;
}




?>