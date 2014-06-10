<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 19.04.2014
 * Time: 11:56
 */

//include 'constants.php';
//include 'dbconnect.php';
include 'config/dbconfig.php';
include 'utils.php';



if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $data = array();
    $mail=(string)$_POST['mail'];

    $pass=(string)$_POST['pass'];

    $result = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND pass='$pass' AND confirm=1 limit 1");

    while($row = mysql_fetch_assoc($result)) {
        $data[] = $row;

    }
    if(isset($data[0]["user_id"]))
    {
        session_start();
        $update = mysql_query("UPDATE users SET active='1' WHERE mail='$mail'");
        $_SESSION['user_id'] =$data[0]["user_id"];
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($data);
    }
    else{
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode(false);
    }

}
else if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    $operation = (string)$_GET['operation'];
    if ($operation == "loginbyfacebook") {

        $data = array();
        $mail=(string)$_GET['mail'];
        $fbid=(string)$_GET['fbid'];
        $name=(string)$_GET['name'];
        $surname=(string)$_GET['surname'];
        $gender="2";//(string)$_POST['gender'];
        $bdate ="0000";//intval((string)$_POST['bdate'])/1000;
        $date = new DateTime();
        $date=$date->getTimestamp();
        $confirmation_code = genarateID();

        $result = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND fbid='$fbid' AND confirm=1 limit 1");

        while($row = mysql_fetch_assoc($result)) {
            $data[] = $row;

        }

        if(isset($data[0]["user_id"]))//if user registered
        {
            session_start();
            $update = mysql_query("UPDATE users SET active='1' WHERE mail='$mail'");
            $_SESSION['user_id'] =$data[0]["user_id"];
            header('Content-Type: application/json; charset=utf-8');
            echo json_encode($data);
        }
        else{ //register user then login
            $confirmation_code = genarateID();
            //TODO Generate Confirmation Code

            $insert = mysql_query("INSERT INTO users VALUES('','$name','$surname','$bdate','$date','$mail','1','$gender','***','','','avatar.png','$confirmation_code','','','1','$fbid','')");
            $user_id = mysql_insert_id();
            $insert2 = mysql_query("INSERT INTO gardrobe VALUES ('','$user_id','ilk gardrobum','genel','$date')");

            $result2 = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND fbid='$fbid' AND confirm=1 limit 1");
            while($row = mysql_fetch_assoc($result2)) {
                $data[] = $row;

            }

            header('Content-Type: application/json; charset=utf-8');
            echo json_encode($result2);
        }
    }

    else if ($operation == "loginbytwitter") {

        $data = array();

        $twid=(string)$_GET['twid'];



        $result = mysql_query("SELECT * FROM `users` WHERE twid='$twid' AND confirm=1 limit 1");

        while($row = mysql_fetch_assoc($result)) {
            $data[] = $row;

        }

        if(isset($data[0]["user_id"]))//if user registered
        {
            session_start();
            $update = mysql_query("UPDATE users SET active='1' WHERE twid='$twid'");
            $_SESSION['user_id'] =$data[0]["user_id"];
            header('Content-Type: application/json; charset=utf-8');
            echo json_encode($data);
        }
      /*  else{ //register user then login
            $confirmation_code = genarateID();

            $insert = mysql_query("INSERT INTO users VALUES('','$name','$surname','$bdate','$date','$mail','1','$gender','***','','','avatar.png','$confirmation_code','','','1','$fbid')");
            $user_id = mysql_insert_id();
            $insert2 = mysql_query("INSERT INTO gardrobe VALUES ('','$user_id','ilk gardrobum','genel','$date')");

            $result2 = mysql_query("SELECT * FROM `users` WHERE mail='$mail' AND fbid='$fbid' AND confirm=1 limit 1");
            while($row = mysql_fetch_assoc($result2)) {
                $data[] = $row;

            }

            header('Content-Type: application/json; charset=utf-8');
            echo json_encode($result2);
        }*/
    }


}


else
{
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
    echo "aa";
}

//mysql_close($dbhandle);
?>