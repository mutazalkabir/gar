<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 19.04.2014
 * Time: 11:56
 */

include 'src/constants.php';
include 'src/dbconnect.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST')
{
    $data = array();
    $mail=(string)$_POST['mail'];

    $pass=(string)$_POST['pass'];

    $result = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND pass='$pass' limit 1");
   // $value = mysql_fetch_object($result);



    while($row = mysql_fetch_assoc($result)) {
        $data[] = $row;
    }
/*
    echo $_SESSION['myid'] = $data[0]->user_id;
    $field_names = array_keys($data[0]);
*/

    session_start();
    $_SESSION['userid'] =$data[0]["user_id"];




   // $row = mysql_fetch_row($data);

    //header('Content-Type: application/json');
      header('Content-Type: application/json; charset=utf-8');
    echo json_encode($data);

    /*   var_dump($insert);
       header('Location: ', true, 200);
*/


    /*
       while ($row = mysql_fetch_array($query)){
           print_r $row;
       }
       */
    exit();
}
else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
}

mysql_close($dbhandle);
?>