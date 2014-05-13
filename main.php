<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 11.05.2014
 * Time: 16:26
 */


include 'src/constants.php';
include 'src/dbconnect.php';

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' || $_SERVER['REQUEST_METHOD'] === 'GET') {

    $operation = (string)$_GET['operation'] ? : "";

    /////////////////////////////////////CATEGORY/////////////////////////////////////
    if ($operation == "getcategory") {
        $data = array();

        $result = mysql_query("SELECT * FROM category ");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        $field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);

        //exit();
    }


    if ($operation == "addcategory") {
        $data = array();
        $name = (string)$_GET['name'];

        $insert = mysql_query("INSERT INTO category VALUES ('','$name')");

        header('Content-Type: application/json');
        echo json_encode($insert);
      //  exit();
    }

    /////////////////////////////////////HANGER/////////////////////////////////////

    if ($operation == "gethanger") {
        $data = array();
        $state = (string)$_GET['state'];
        $user_id = $_SESSION['userid'];
        $result ="";
        if($state=="all")
        {

            $result = mysql_query("SELECT * FROM hanger limit 50");

        }
        else
        {
            $result = mysql_query("SELECT * FROM hanger");

        }


        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        $field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


     //   exit();
    }


    if ($operation == "addhanger") {
        $data = array();
        $user_id = $_SESSION['userid'];
        $category_id = (string)$_GET['category_id'];
        $gardrobe_id = (string)$_GET['gardrobe_id'];
        $city = (string)$_GET['city'];
        $place = (string)$_GET['place'];
        $about = (string)$_GET['about'];
        $pic = (string)$_GET['pic'];

        $insert = mysql_query("INSERT INTO hanger VALUES ('','$user_id','$category_id','$gardrobe_id','$about','$city','$place','$pic')");

        if($insert==false)
            echo mysql_error();

        header('Content-Type: application/json');
        echo json_encode($insert);
      //  exit();
    }

    /////////////////////////////////////GARDROBE/////////////////////////////////////

    if ($operation == "listgardrobe") {
        $data = array();

        $result = mysql_query("SELECT * FROM `gardrobe` ");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        $field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


      //  exit();
    }


    if ($operation == "getgardrobe") {
        $data = array();
        $gardrobe_id = (string)$_GET['gardrobe_id'];

        $result = mysql_query("SELECT * FROM gardrobe WHERE gardrobe_id='$gardrobe_id'");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        $field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


      //  exit();
    }


    if ($operation == "addgardrobe") {
        $data = array();

        $user_id = $_SESSION['userid'];
        $title = (string)$_GET['title'];
        $about = (string)$_GET['about'];
        $date = new DateTime();
        $date = $date->getTimestamp();

        $insert = mysql_query("INSERT INTO gardrobe VALUES ('','$user_id','$title','$about','$date')");
        if($insert==false)
            echo mysql_error();



        header('Content-Type: application/json');
        echo json_encode($insert);
     //   exit();
    }

    /////////////////////////////////////TAG/////////////////////////////////////




    if ($operation == "gettag") {
        $data = array();
        $hanger_id = (string)$_GET['hanger_id'];

        $result = mysql_query("SELECT * FROM tag WHERE hanger_id='$hanger_id'");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        $field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


        //  exit();
    }


    if ($operation == "addtag") {
        $data = array();

        $user_id = $_SESSION['userid'];



        $category_id = (string)$_GET['category_id'];
        $gardrobe_id = (string)$_GET['gardrobe_id'];
        $hanger_id = (string)$_GET['hanger_id'];
        $brand_id = (string)$_GET['brand_id'];
        $title = (string)$_GET['title'];

        $date = new DateTime();
        $date = $date->getTimestamp();
        $insert = mysql_query("INSERT INTO tag VALUES ('','$user_id','$gardrobe_id','$hanger_id','$brand_id','$title','$date')");


        if($insert==false)
            echo mysql_error();



        header('Content-Type: application/json');
        echo json_encode($insert);
        //   exit();
    }

    /////////////////////////////////////BRAND/////////////////////////////////////

    if ($operation == "listbrands") {
        $data = array();

        $result = mysql_query("SELECT * FROM brands ");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        $field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


        //  exit();
    }


    if ($operation == "addbrand") {
        $data = array();

        $brand_name = (string)$_GET['brand_name'];


        $insert = mysql_query("INSERT INTO brands VALUES ('','$brand_name')");
        if($insert==false)
            echo mysql_error();



        header('Content-Type: application/json');
        echo json_encode($insert);
        //   exit();
    }






} else {
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
    echo "wrong_operation";
}


mysql_close($dbhandle);
exit();
?>