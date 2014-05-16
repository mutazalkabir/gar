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
    $password = null;
    $password_length = 16;

    while($password === null) {
        $password = '';
        for($i = 0; $i < $password_length; ++$i) {
            $password .= $allowed_chars{mt_rand(0, $allowed_count - 1)};
        }
    }
    return $password;
}




?>