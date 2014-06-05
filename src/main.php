<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 11.05.2014
 * Time: 16:26
 */

error_reporting(E_ALL ^ E_DEPRECATED);
//include 'src/authtest.php';
include 'constants.php';
include 'dbconnect.php';


// Starting the session

// Making the cookie live for 2 weeks

session_start();


if ($_SERVER['REQUEST_METHOD'] === 'POST' || $_SERVER['REQUEST_METHOD'] === 'GET') {

    $operation = (string)$_GET['operation'];




    /////////////////////////////////////USER/////////////////////////////////////
    if ($operation == "getuser") {
        $data = array();
        $user_id = (string)$_GET['user_id'];
        $result = mysql_query("SELECT * FROM users WHERE user_id=$user_id AND active=1");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        //$field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);

        //exit();
    }
    if ($operation == "getuserdata") {
        $data = array();
        $user_id = (string)$_GET['user_id'];
        $result = mysql_query("SELECT * FROM users WHERE user_id=$user_id AND active=1");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        //$field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);

        //exit();
    }


    if ($operation == "getallusers") {
        $data = array();
        $result = mysql_query("SELECT *, CONCAT(u.name,' ',u.surname) as label, CONCAT(u.name,' ',u.surname) as value, u.user_id as id FROM users u WHERE u.active =1");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        //$field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);

        //exit();
    }




    /////////////////////////////////////updateuser/////////////////////////////////////
    if ($operation == "updateuser") {

$data = array();
        $user_id =(string)$_GET['user_id'];//$_SESSION['userid'];
        $name=(string)$_GET['name'];
        $surname=(string)$_GET['surname'];
        $pass=(string)$_GET['pass'];
        $phone=(string)$_GET['phone'];
        $city=(string)$_GET['city'];
        $about=(string)$_GET['about'];
        $pic_id=(string)$_GET['pic_id'];
        $min_side=(string)$_GET['min_side'];
        $x=(string)$_GET['x'];
        $y=(string)$_GET['y'];


        $update = mysql_query("UPDATE users SET name='$name', surname='$surname', pass='$pass', about='$about', phone='$phone' ,city='$city', pic_id='$pic_id' WHERE user_id='$user_id'");





        // SETTINGS
        $image_name = $AVATARS_FOLDER_PATH.$pic_id;    // Full path and image name with extension
        $thumb_name = $AVATARS_FOLDER_PATH.'thumbnail';   // Generated thumbnail name without extension
        $thumb_side = 500;
      //  $min_side=993;// Desired thumbnail side size
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
        imagecopyresampled($dst_image, $src_image,0 , 0, $x, $y, $thumb_side, $thumb_side, $min_side, $min_side);

        switch ($image_extension)
        {
            case 'jpg':
                imagejpeg($dst_image, $image_name, 5);
                break;
            case 'png':
                imagepng($dst_image, $image_name, 5);
                break;
        }

        imagedestroy($src_image);
        imagedestroy($dst_image);

        if($update)
        {
                $result = mysql_query("SELECT * FROM users WHERE user_id=$user_id ");

                while ($row = mysql_fetch_assoc($result)) {
                    $data[] = $row;
                }
                //$field_names = array_keys($data[0]);


                header('Content-Type: application/json');
                echo json_encode($data);
        }
        else
        {
                header('Content-Type: application/json');
                echo json_encode($update);
        }


        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data


    }

    if ($operation == "deactivateaccount") {

        $data = array();
        $user_id =(string)$_GET['user_id'];//$_SESSION['userid'];

        $update = mysql_query("UPDATE users SET  active='0' WHERE user_id='$user_id'");
        echo json_encode($update);

    }




    /////////////////////////////////////CATEGORY/////////////////////////////////////
    if ($operation == "getcategory") {
        $data = array();

        $result = mysql_query("SELECT * FROM category ");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        //$field_names = array_keys($data[0]);

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
        $state= "";
        $type= "";

        if(isset($_GET['state']))
        {
            $state = (string)$_GET['state'];
        }

        if(isset($_GET['type']))
        {
            $type = (string)$_GET['type'];
        }
        if(isset($_GET['type_id']))
        {
            $type_id = (string)$_GET['type_id'];
        }
        if(isset($_GET['start_date']))
        {

            $start_date = ((int)$_GET['start_date']);

        }
        if(isset($_GET['end_date']))
        {
            $end_date = ((int)$_GET['end_date']);

        }



        $user_id =$_SESSION['user_id'];
        $result ="";
        if($state=="all")
        {

            $result = mysql_query("SELECT h.hanger_id, u.user_id, u.name, u.surname, u.pic_id as avatar, g.gardrobe_name, g.gardrobe_id, c.category_id, c.category_name, h.about, h.city, h.place, h.pic_id, h.create_date, h.tags
             FROM users u, hanger h, gardrobe g,category c
             WHERE c.category_id =h.category_id AND u.user_id=h.user_id AND g.gardrobe_id=h.gardrobe_id AND u.active='1'");
	
        }
        else if($state=="fellowed")
        {
            $result = mysql_query("SELECT DISTINCT f.fellower_id, h.hanger_id, u.user_id, u.name, u.surname, u.pic_id as avatar, g.gardrobe_name, g.gardrobe_id, c.category_id, c.category_name, h.about, h.city, h.place, h.pic_id, h.create_date, h.tags
            FROM users u, hanger h, gardrobe g,category c,fellowship f
            WHERE c.category_id =h.category_id AND u.user_id=h.user_id AND g.gardrobe_id=h.gardrobe_id AND f.fellowed_id = h.user_id AND  f.fellower_id=$user_id AND u.active='1'");

        }
        else if($type==$BY_CATEGORY){
            $result = mysql_query("SELECT DISTINCT c.category_id, c.category_name, h.hanger_id, u.user_id, u.name, u.surname, u.pic_id as avatar, g.gardrobe_name, g.gardrobe_id, c.category_id, c.category_name, h.about, h.city, h.place, h.pic_id, h.create_date, h.tags
             FROM users u, hanger h, gardrobe g,category c
             WHERE c.category_id =h.category_id AND u.user_id=h.user_id AND g.gardrobe_id=h.gardrobe_id  AND c.category_id = $type_id  AND u.active='1' ORDER BY  h.create_date ASC");
        }
        else if($type==$BY_BRAND){
            $result = mysql_query("SELECT DISTINCT h.hanger_id, u.user_id, u.name, u.surname, u.pic_id as avatar, g.gardrobe_name, g.gardrobe_id, c.category_id, c.category_name, h.about, h.city, h.place, h.pic_id, h.create_date, h.tags
             FROM users u, hanger h, gardrobe g,category c, hanger_brands hb
             WHERE c.category_id =h.category_id AND u.user_id=h.user_id AND g.gardrobe_id=h.gardrobe_id AND hb.brand_id = '$type_id' AND hb.hanger_id = h.hanger_id AND u.active='1' ORDER BY h.create_date ASC");
        }
        else if($type==$BY_DATE){
            $result = mysql_query("SELECT DISTINCT h.hanger_id, u.user_id, u.name, u.surname, u.pic_id as avatar, g.gardrobe_name, g.gardrobe_id, c.category_id, c.category_name, h.about, h.city, h.place, h.pic_id, h.create_date, h.tags
             FROM users u, hanger h, gardrobe g,category c
             WHERE c.category_id =h.category_id AND u.user_id=h.user_id AND g.gardrobe_id=h.gardrobe_id  AND h.create_date BETWEEN $start_date AND $end_date AND u.active='1' ORDER BY  h.create_date ASC");
        }
        else if($type==$BY_CITY){
            $result = mysql_query("SELECT DISTINCT h.hanger_id, u.user_id, u.name, u.surname, u.pic_id as avatar, g.gardrobe_name, g.gardrobe_id, c.category_id, c.category_name, h.about, h.city, h.place, h.pic_id, h.create_date, h.tags
             FROM users u, hanger h, gardrobe g,category c
             WHERE c.category_id =h.category_id AND u.user_id=h.user_id AND g.gardrobe_id=h.gardrobe_id  AND h.city = '$type_id' AND u.active='1' ORDER BY  h.create_date ASC");
        }




        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }

        //get Likes
        $max = sizeof($data);



        for($i=0;$i<$max;$i++){
            $id= $data[$i]['hanger_id'];
            $likes= array();

            $result2 = mysql_query("SELECT CONCAT(u.name,' ',u.surname) as liker_name, u.user_id , u.pic_id ,l.*  FROM likes l, users u WHERE liked_id = $id AND u.user_id= l.user_id AND u.active='1' ");

            while ($row2 = mysql_fetch_assoc($result2)) {
                if($row2["user_id"]==$user_id)
                {
                    $data[$i]["hadliked"]="true";
                }
                array_push($likes,$row2);
            }
            if($likes!=null)
            {
                $data[$i]["likes"]=$likes;
            }
            unset($likes);
        }

        //get shares
        for($i=0;$i<$max;$i++){
            $id= $data[$i]['hanger_id'];
            $shares= array();
            $result2 = mysql_query("SELECT CONCAT(u.name,' ',u.surname) as liker_name, u.user_id, u.pic_id ,s.*  FROM share s, users u WHERE hanger_id = $id AND u.user_id= s.user_id  AND u.active='1' ");



            while ($row2 = mysql_fetch_assoc($result2)) {
                if($row2["user_id"]==$user_id)
                {
                    $data[$i]["hadshared"]="true";
                }
                array_push($shares,$row2);
            }

            if($shares!=null)
            {
                $data[$i]["shares"]=$shares;
            }
            unset($shares);
        }
        //get comments
        for($i=0;$i<$max;$i++){
            $id= $data[$i]['hanger_id'];
            $comments= array();
            $result2 = mysql_query("SELECT CONCAT(u.name,' ',u.surname) as liker_name, u.user_id, u.pic_id ,c.*  FROM comment c, users u WHERE hanger_id = $id AND u.user_id= c.user_id AND u.active='1' ");



            while ($row2 = mysql_fetch_assoc($result2)) {
                array_push($comments,$row2);
            }

            if($comments!=null)
            {
                $data[$i]["comments"]=$comments;
            }
            unset($comments);
        }

        //prepare array field names
       // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data);


     //   exit();
    }


    if ($operation == "addhanger") {
        $data = array();
        $user_id = (string)$_GET['user_id'];
        $category_id = (string)$_GET['category_id'];
        $gardrobe_id = (string)$_GET['gardrobe_id'];
        $city = (string)$_GET['city'];
        $place = (string)$_GET['place'];
        $about = (string)$_GET['about'];
        $newfilename = (string)$_GET['newfilename'];
        $brands = (string)$_GET['brands'];
        $tags = (string)$_GET['tags'];
        $date = new DateTime();
        $date = $date->getTimestamp();
        

		$insert = mysql_query("INSERT INTO hanger VALUES ('','$user_id','$category_id','$gardrobe_id','$about','$city','$place','$newfilename','$tags','$date')");
        $hanger_id = mysql_insert_id();
        $brandArray = explode(',', $brands);

        $max = sizeof($brandArray);
// because first char is comma
        for($i=1;$i<$max;$i++)
        {


            $insert = mysql_query("INSERT INTO hanger_brands VALUES ('','$brandArray[$i]','$hanger_id')");
        }



        if($insert==false)
            echo mysql_error();

        header('Content-Type: application/json');
        echo json_encode($insert);
      //  exit();
    }

    /////////////////////////////////////GARDROBE/////////////////////////////////////

    if ($operation == "listgardrobe") {
        $data = array();
        $user_id = (string)$_GET['user_id'];
        $result = mysql_query("SELECT g.*, u.pic_id as avatar FROM gardrobe g, users u WHERE g.user_id=$user_id AND u.user_id= g.user_id  AND u.active='1' ");
        $total_hanger_count=0;
        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }


        //get Likes
        $max = sizeof($data);



        for($i=0;$i<$max;$i++){
            $gardrobe_id= $data[$i]['gardrobe_id'];
            $hangers= array();

            $result2 = mysql_query("SELECT * FROM hanger WHERE gardrobe_id= $gardrobe_id");

            while ($row2 = mysql_fetch_assoc($result2)) {
                $total_hanger_count++;
                array_push($hangers,$row2);
            }
          //  if($hangers!=null)
           // {
                $data[$i]["hangers"]=$hangers;
           // }
            unset($hangers);
        }

      //  if($total_hanger_count>0)
      //  {
            $data[0]["hanger_count"]=$total_hanger_count;
        //}


        //$field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


      //  exit();
    }


    if ($operation == "getgardrobe") {
        $data = array();
        $gardrobe_id = (string)$_GET['gardrobe_id'];

        $result = mysql_query("SELECT g.*, u.pic_id FROM gardrobe g, users u WHERE u._user_id = g.user_id AND g.gardrobe_id='$gardrobe_id'  AND u.active='1' ");

        while ($row = mysql_fetch_assoc($result)) {
            $data[] = $row;
        }
        //$field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


      //  exit();
    }


    if ($operation == "addgardrobe") {
        $data = array();

        $user_id = (string)$_GET['user_id'];
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
        //$field_names = array_keys($data[0]);

        header('Content-Type: application/json');
        echo json_encode($data);


        //  exit();
    }


    if ($operation == "addtag") {
        $data = array();

        $user_id = $_SESSION['user_id'];



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

        $result = mysql_query("SELECT *, b.brand_name as label, b.brand_name as value, b.brand_id as id FROM brands b ORDER BY b.brand_id DESC ");

        while ($row = mysql_fetch_assoc($result)) {

            $data[] = $row;
        }
        //$field_names = array_keys($data);

        header('Content-Type: application/json');
        echo json_encode($data);


        //  exit();
    }


    if ($operation == "addbrand") {
        $data = array();

        $brand_name = (string)$_GET['brand_name'];


        $insert = mysql_query("INSERT INTO brands VALUES ('','$brand_name','')");
        if($insert==false)
            echo mysql_error();



        header('Content-Type: application/json');
        echo json_encode($insert);
        //   exit();
    }


/*
    $likes= array();

    $result2 = mysql_query("SELECT *  FROM likes WHERE liked_id = $id");

    while ($row2 = mysql_fetch_assoc($result2)) {
        array_push($likes,$row2);
    }
    if($likes!=null)
    {
        $data[$i]["likes"]=$likes;
    }
    unset($likes);
*/
    /////////////////////////////////////followers/////////////////////////////////////
    if ($operation == "getfellowers") {
$data= array();
        $fellowed_id =(string)$_GET['fellowed_id'];

        $result = mysql_query("SELECT * FROM fellowship f, users u WHERE f.fellowed_id=$fellowed_id AND u.user_id =f.fellower_id AND u.active='1' ");

      //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
                $data[]=$row;
        }

        //prepare array field names
       // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data);

    }

    if ($operation == "getfellows") {
$data= array();
        $fellower_id =(string)$_GET['fellower_id'];//$_SESSION['userid'];

        $result = mysql_query("SELECT * FROM fellowship f, users u WHERE f.fellower_id=$fellower_id AND u.user_id =f.fellowed_id AND u.active='1' ");

        //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data);

    }

    if ($operation == "addfellower") {
        $data = array();

        $fellower_id = (string)$_GET['fellower_id'];
        $fellowed_id = (string)$_GET['fellowed_id'];
        $date = new DateTime();
        $date = $date->getTimestamp();


        $insert = mysql_query("INSERT INTO fellowship VALUES ('$fellower_id','$fellowed_id','','$date')");
        if($insert==false)
            echo mysql_error();

        $insert2 = mysql_query("INSERT INTO notifications VALUES ('','$fellower_id','$fellowed_id','4','null','$date','0')");
        if($insert2==false)
            echo mysql_error();



        header('Content-Type: application/json');
        echo json_encode($insert2);
        //   exit();
    }

    if ($operation == "removefellower") {
        $data = array();

        $fellower_id = (string)$_GET['fellower_id'];
        $fellowed_id = (string)$_GET['fellowed_id'];

        $insert = mysql_query("DELETE FROM fellowship WHERE fellower_id=$fellower_id AND fellowed_id = $fellowed_id");
        if($insert==false)
            echo mysql_error();

        header('Content-Type: application/json');
        echo json_encode($insert);

        //   exit();
    }





    // SELECT u2.name as liker_name, u2.surname as liker_surname,u2.user_id as liker_user_id, u3.name as liked_name, u3.surname as liked_surname,u3.user_id as liked_user_id, l.liked_id, l.like_date, t.type_name FROM users u, users u2, users u3,fellowship f, likes l,type t WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =l.user_id AND u3.user_id=l.liked_user_id AND t.type_id = l.liked_type_id

    /////////////////////////////////////feed/////////////////////////////////////


    if ($operation == "getfeeddata") {
        $data = array();
        $user_id = (string)$_GET['user_id'];
        $result = mysql_query("SELECT 'fellowship' as feed_type, u.pic_id as user_one_pic, u.user_id as user_one_id, CONCAT(u.name, ' ', u.surname) as user_one, u2.pic_id as user_two_pic, u2.user_id as user_two_id, CONCAT(u2.name, ' ', u2.surname) as user_two, f.fellowship_date as date
        FROM fellowship f, fellowship f2, users u, users u2
        WHERE u.user_id= f.fellower_id AND  u2.user_id =f.fellowed_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1'
        ORDER BY f.fellowship_date ASC");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }


        $result = mysql_query(" SELECT  'like' as feed_type, u2.pic_id as user_one_pic, u2.user_id as user_one_id, CONCAT(u2.name, ' ', u2.surname) as user_one, u3.pic_id as user_two_pic, u3.user_id as user_two_id, CONCAT(u3.name, ' ', u3.surname) as user_two, l.liked_id as hanger_id, l.like_date as date
           FROM users u, users u2, users u3,fellowship f,fellowship f2, likes l,type t
           WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =l.user_id AND u3.user_id=l.liked_user_id AND t.type_id = l.liked_type_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1' AND u3.active='1'
           ORDER BY l.like_date ASC");

/*
        $result = mysql_query(" SELECT u2.name as liker_name, u2.surname as liker_surname,u2.user_id as liker_user_id, u3.name as liked_name, u3.surname as liked_surname,u3.user_id as liked_user_id, l.liked_id, l.like_date, t.type_name
       FROM users u, users u2, users u3,fellowship f,fellowship f2, likes l,type t
       WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =l.user_id AND u3.user_id=l.liked_user_id AND t.type_id = l.liked_type_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id
       ORDER BY l.like_date ASC");
*/
        //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        $result = mysql_query(" SELECT  'share' as feed_type, u2.pic_id as user_one_pic, u2.user_id as user_one_id, CONCAT(u2.name, ' ', u2.surname) as user_one, u3.pic_id as user_two_pic, u3.user_id as user_two_id, CONCAT(u3.name, ' ', u3.surname) as user_two, s.share_id as hanger_id, s.share_date as date
        FROM users u, users u2, users u3,fellowship f,fellowship f2, share s
        WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =s.user_id AND u3.user_id=s.shared_user_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1' AND u3.active='1'
        ORDER BY s.share_date ASC");

        //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        $result = mysql_query("SELECT  'comment' as feed_type, u2.pic_id as user_one_pic, u2.user_id as user_one_id, CONCAT(u2.name, ' ', u2.surname) as user_one, u3.pic_id as user_two_pic, u3.user_id as user_two_id, CONCAT(u3.name, ' ', u3.surname) as user_two, c.comment_id as hanger_id, c.comment_date as date
        FROM users u, users u2, users u3,fellowship f,fellowship f2, comment c
        WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =c.user_id AND u3.user_id=c.commented_user_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1' AND u3.active='1'
        ORDER BY c.comment_date ASC");

        //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

//        function cmp($a, $b)
//        {
//            return strcmp($a->user_one_id, $b->user_one_id);
//        }
//
//        usort($data, "cmp");

        //prepare array field names
        // $field_names = array_keys($data[0]);
    //    ksort($data,"user_one_id");

       // array_multisort($data["date"],SORT_DESC);

        //return data
        header('Content-Type: application/json');
        echo json_encode($data);





    }



    if ($operation == "getfellowshipfeed") {
   $data = array();
        $user_id = (string)$_GET['user_id'];
         $result = mysql_query("SELECT u.pic_id as fellower_pic, u.user_id as fellower_id, CONCAT(u.name, ' ', u.surname) as fellower, u2.pic_id as fellowed_pic, u2.user_id as fellowed_id, CONCAT(u2.name, ' ', u2.surname) as fellowed
        FROM fellowship f, fellowship f2, users u, users u2
        WHERE u.user_id= f.fellower_id AND  u2.user_id =f.fellowed_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1'
        ORDER BY f.fellowship_date ASC");

        //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data);

    }


   if ($operation == "getlikefeed") {
 $data = array();
        $user_id = (string)$_GET['user_id'];

       $result = mysql_query(" SELECT u2.name as liker_name, u2.surname as liker_surname,u2.user_id as liker_user_id, u3.name as liked_name, u3.surname as liked_surname,u3.user_id as liked_user_id, l.liked_id, l.like_date, t.type_name
       FROM users u, users u2, users u3,fellowship f,fellowship f2, likes l,type t
       WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =l.user_id AND u3.user_id=l.liked_user_id AND t.type_id = l.liked_type_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1' AND u3.active='1'
       ORDER BY l.like_date ASC");

       //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

       while ($row = mysql_fetch_assoc($result)) {
           $data[]=$row;
       }

       //prepare array field names
       // $field_names = array_keys($data[0]);


       //return data
       header('Content-Type: application/json');
       echo json_encode($data);

   }
    if ($operation == "getsharefeed") {

 $data = array();
        $user_id = (string)$_GET['user_id'];
        $result = mysql_query("SELECT u2.name as sharer_name, u2.surname as sharer_surname,u2.user_id as sharer_user_id, u3.name as shared_name, u3.surname as shared_surname,u3.user_id as shared_user_id, s.share_id, s.share_date
        FROM users u, users u2, users u3,fellowship f,fellowship f2, share s
        WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =s.user_id AND u3.user_id=s.shared_user_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1' AND u3.active='1'
        ORDER BY s.share_date ASC");

        //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data);

    }
    if ($operation == "getcommentfeed") {

 $data = array();
        $user_id = (string)$_GET['user_id'];
        $result = mysql_query("SELECT u2.name as commenter_name, u2.surname as commenter_surname,u2.user_id as commenter_user_id, u3.name as commented_name, u3.surname as commented_surname,u3.user_id as commented_user_id, c.comment_id, c.comment_date
        FROM users u, users u2, users u3,fellowship f,fellowship f2, comment c
        WHERE u.user_id=4 and u2.user_id = f.fellowed_id AND f.fellower_id=4 AND u2.user_id =c.user_id AND u3.user_id=c.commented_user_id AND f2.fellowed_id= f.fellower_id AND f2.fellower_id=$user_id AND u.active='1' AND u2.active='1' AND u3.active='1'
        ORDER BY c.comment_date ASC");

        //  SELECT DISTINCT * FROM fellowship f, user u WHERE f.fellowed_id=4 AND u.user_id =f.fellower_id

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data);

    }




    /////////////////////////////////////comments/////////////////////////////////////
    if ($operation == "getcomment") {

        $hanger_id =(string)$_GET['hanger_id'];//$_SESSION['userid'];

        $result = mysql_query("SELECT * FROM comment WHERE hanger_id=$hanger_id");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data,JSON_UNESCAPED_UNICODE);

    }


// $= (string)$_GET[''];
    if ($operation == "addcomment") {
        $data = array();

        $hanger_id= (string)$_GET['hanger_id'];
        $hanger_owner_id = (string)$_GET['hanger_owner_id'];
        $comment= (string)$_GET['comment'];
        $commeter_id= (string)$_GET['commeter_id'];
        $date = new DateTime();
        $date = $date->getTimestamp();


        $insert = mysql_query("INSERT INTO comment VALUES ('','$commeter_id','$date','$hanger_id','$comment','$hanger_owner_id')");
        if($insert==false)
            echo mysql_error();

        $insert2 = mysql_query("INSERT INTO notifications VALUES ('','$commeter_id','$hanger_owner_id','3','$hanger_id','$date','0')");
        if($insert2==false)
            echo mysql_error();


        header('Content-Type: application/json');
        echo json_encode($insert,$insert2);
        //   exit();
    }


    /////////////////////////////////////like/////////////////////////////////////
    if ($operation == "getlike") {

        $hanger_id =(string)$_GET['hanger_id'];//$_SESSION['userid'];

        $result = mysql_query("SELECT * FROM likes WHERE hanger_id=$hanger_id");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data,JSON_UNESCAPED_UNICODE);

    }


// $= (string)$_GET[''];
    if ($operation == "addlike") {
        $data = array();

        $liked_id= (string)$_GET['liked_id'];
        $liked_type_id= (string)$_GET['liked_type_id'];
        $liked_user_id = (string)$_GET['liked_user_id'];
        $liker_id= (string)$_GET['liker_id'];
        $date = new DateTime();
        $date = $date->getTimestamp();


        $insert = mysql_query("INSERT INTO likes VALUES ('','$liked_id','$liker_id','$liked_type_id','$date','$liked_user_id')");
        if($insert==false)
            echo mysql_error();

// $insert2 = mysql_query("INSERT INTO notifications VALUES ('','$commeter_id','$hanger_owner_id','3','$hanger_id','$date')");


        $insert2 = mysql_query("INSERT INTO notifications VALUES ('','$liker_id','$liked_user_id','1','$liked_id','$date','0')");
        if($insert2==false)
            echo mysql_error();


        header('Content-Type: application/json');
        echo json_encode($insert,$insert2);
        //   exit();
    }

    /////////////////////////////////////share/////////////////////////////////////
    if ($operation == "getsahre") {

        $hanger_id =(string)$_GET['hanger_id'];//$_SESSION['userid'];

        $result = mysql_query("SELECT * FROM share WHERE hanger_id=$hanger_id");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data,JSON_UNESCAPED_UNICODE);

    }


// $= (string)$_GET[''];
    if ($operation == "addshare") {
        $data = array();

        $hanger_id= (string)$_GET['hanger_id'];
        $shared_user_id = (string)$_GET['shared_user_id'];
        $sharer_id= (string)$_GET['sharer_id'];
        $date = new DateTime();
        $date = $date->getTimestamp();


        $insert = mysql_query("INSERT INTO share VALUES ('','$hanger_id','$sharer_id','$date','$shared_user_id')");
        if($insert==false)
            echo mysql_error();

        $insert2 = mysql_query("INSERT INTO notifications VALUES ('','$sharer_id','$shared_user_id','2','$hanger_id','$date','0')");
        
        if($insert2==false)
            echo mysql_error();


        header('Content-Type: application/json');
        echo json_encode($insert,$insert2);
        //   exit();
    }


    /////////////////////////////////////messaging/////////////////////////////////////
    if ($operation == "listmessage") {

        $data = array();
        $sender_id = (string)$_GET['sender_id'];
        $receiver_id= (string)$_GET['receiver_id'];
        $conversation_id= (string)$_GET['conversation_id'];
        $date = new DateTime();
        $date = $date->getTimestamp();

        //check if there is valid conversation
        $result = mysql_query("SELECT * FROM pm WHERE user_one=$sender_id AND user_two=$receiver_id OR user_one=$receiver_id AND user_two=$sender_id ORDER BY message_date ASC");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        header('Content-Type: application/json');
        echo json_encode($data);

    }

    if($operation=="getallconversations")
    {
        $data = array();

        $user_id = (string)$_GET['user_id'];
        $i=0;

        //check if there is valid conversation
        $result = mysql_query(" SELECT CONCAT(u.name, ' ', u.surname) as user_one_name, u.pic_id as user_one_pic_id, CONCAT(u2.name, ' ', u2.surname) as user_two_name, u2.pic_id as user_two_pic_id, c.conversation_date as date,c.receiver_read , c.c_id as conversation_id
        FROM users u, users u2 ,conversation c
        WHERE (u.user_id=c.user_one OR u.user_id=c.user_two) AND u.user_id=$user_id AND (u2.user_id=c.user_one OR u2.user_id=c.user_two) AND u2.user_id != $user_id AND u.active='1' AND u2.active='1' ORDER BY c.conversation_date ASC");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
            $data2 = array();
            $receiver_read="false";
            $conversation_id=$row["conversation_id"];
          //  $result2 = mysql_query(" SELECT * FROM pm WHERE conversation_id = '$conversation_id' ORDER BY message_date ASC");

            $result2 = mysql_query("SELECT CONCAT(u.name,' ', u.surname) as user_one_name, CONCAT(u2.name,' ', u2.surname) as user_two_name, p.* FROM users u, users u2, pm p WHERE p.conversation_id ='$conversation_id' AND (u.user_id = p.user_one OR u.user_id = p.user_two) AND ( u2.user_id = p.user_one OR u2.user_id = p.user_two ) AND u.user_id != u2.user_id AND u.user_id = p.user_one AND u.active='1' AND u2.active='1' ORDER BY message_date ASC LIMIT 0 , 30");
            $max = sizeof($data);


            while ($row2 = mysql_fetch_assoc($result2)) {
                $data2[]=$row2;
              /*  if($row2["receiver_read"]=="1")
                {
                    $receiver_read="true";
                }*/
            }

            if(sizeof($data2)>0)
            {
                $data[$i]["messages"]=$data2;
                unset($data2);
           //     $data[$i]["isread"]=$receiver_read;
            }
            $i++;
        }



        header('Content-Type: application/json');
        echo json_encode($data);

    }


    if($operation=="getconversation")
    {
        $data = array();
        $sender_id = (string)$_GET['sender_id'];
        $receiver_id= (string)$_GET['receiver_id'];
        $date = new DateTime();
        $date = $date->getTimestamp();

        //check if there is valid conversation
        $result = mysql_query("SELECT * FROM conversation WHERE user_one=$sender_id AND user_two=$receiver_id OR user_one=$receiver_id AND user_two=$sender_id");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }
        if(sizeof($data)==0)
        {
            $insert = mysql_query("INSERT INTO conversation VALUES ('','$sender_id','$receiver_id','','$date')");
            $conversation_id = mysql_insert_id();
            if($insert==false)
                echo mysql_error();

            $result = mysql_query("SELECT * FROM conversation WHERE user_one=$sender_id AND user_two=$receiver_id OR user_one=$receiver_id AND user_two=$sender_id");
            while ($row = mysql_fetch_assoc($result)) {
                $data[]=$row;
            }
        }


        header('Content-Type: application/json');
        echo json_encode($data);




    }

    if ($operation == "sendmessage") {

        $data = array();

        $message= (string)$_GET['message'];
        $sender_id = (string)$_GET['sender_id'];
        $receiver_id= (string)$_GET['receiver_id'];
        $date = new DateTime();
        $conversation_id= (string)$_GET['conversation_id'];
        $date = $date->getTimestamp();


        if($conversation_id!="-1")
        {
            $conversation_id= (string)$_GET['conversation_id'];
        }
        else{
            $insert = mysql_query("INSERT INTO conversation VALUES ('','$sender_id','$receiver_id','','$date','0')");
            $conversation_id = mysql_insert_id();
        }



        $insert = mysql_query("INSERT INTO pm VALUES ('','$sender_id','$receiver_id','$message','$date','$conversation_id')");
        if($insert==false)
            echo mysql_error();


        $update = mysql_query("UPDATE conversation SET conversation_date = $date WHERE c_id=$conversation_id");
        if($update==false)
            echo mysql_error();


        header('Content-Type: application/json');
        echo json_encode($insert,$update);

    }


    if ($operation == "markconversationasread") {

        $data = array();

        $conversation_id= (string)$_GET['conversation_id'];
        $date = new DateTime();
        $date = $date->getTimestamp();

        $update = mysql_query("UPDATE conversation SET receiver_read = 1 WHERE c_id=$conversation_id");
        if($update==false)
            echo mysql_error();

        header('Content-Type: application/json');
        echo json_encode($update);

    }


    /////////////////////////////////////notifications/////////////////////////////////////

    if ($operation == "getnotifications") {

        $user_id =(string)$_GET['user_id'];//$_SESSION['userid'];

        $result = mysql_query("SELECT u.pic_id, CONCAT(u.name,' ',u.surname) as notifier_name,  n.notification_id, n.notifier_id, n.notified_id, n.notificated_item_id ,n.notification_date, n.seen, nt.* FROM notifications n, notification_types nt, users u WHERE n.notification_type_id = nt.notification_type_id AND n.notified_id=$user_id AND n.notifier_id= u.user_id AND u.active='1'");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }

        //prepare array field names
        // $field_names = array_keys($data[0]);


        //return data
        header('Content-Type: application/json');
        echo json_encode($data);

    }
    if ($operation == "notificationsseen") {

        $user_id =(string)$_GET['user_id'];//$_SESSION['userid'];

        $update = mysql_query("UPDATE notifications SET seen='1' WHERE notified_id='$user_id'");

            header('Content-Type: application/json');
            echo json_encode($update);


        //return data

    }

    /////////////////////////////////////mention/////////////////////////////////////

    if ($operation == "addmention") {

        $data = array();

        $hanger_id= (string)$_GET['hanger_id'];
        $mentionedFriendsList = (string)$_GET['mentionedFriendsList'];
        $comment= (string)$_GET['comment'];
        $mentioner_id= (string)$_GET['mentioner_id'];

        $date = new DateTime();
        $date = $date->getTimestamp();

        echo($mentionedFriendsList);
        echo "  %  ";





        $mentionedUserArray = explode(',', $mentionedFriendsList);

        echo($mentionedUserArray);


        $max = sizeof($mentionedUserArray);

        for($i=0;$i<$max;$i++)
        {

            echo($mentionedFriendsList[$i]);
            $mentioned_id=$mentionedUserArray[$i];
            $insert = mysql_query("INSERT INTO mentions VALUES ('','$mentioned_id','$mentioner_id','$hanger_id','$date','$comment')");
            $insert2 = mysql_query("INSERT INTO notifications VALUES ('','$mentioner_id','$mentioned_id','5','$hanger_id','$date','0')");
        }

        header('Content-Type: application/json');
        echo json_encode($insert);



    }

    if ($operation == "reporthanger") {
        $data = array();
        $reporter_id = (string)$_GET['reporter_id'];
        $hanger_id= (string)$_GET['hanger_id'];
        $comment= (string)$_GET['comment'];
        $hanger_owner_id= (string)$_GET['hanger_owner_id'];
        $date = new DateTime();
        $date=$date->getTimestamp();

        $insert = mysql_query("INSERT INTO reports VALUES ('','$hanger_id','$reporter_id','$hanger_owner_id','$date','$comment')");

        header('Content-Type: application/json');
        echo json_encode($insert);
        //  exit();
    }

    if ($operation == "getReports") {
        $data = array();
        $result = mysql_query("SELECT * FROM reports");

        while ($row = mysql_fetch_assoc($result)) {
            $data[]=$row;
        }


        header('Content-Type: application/json');
        echo json_encode($data);
        //  exit();
    }







} else {
    // var_dump($_GET);
    header('Content-Type: application/json; charset=utf-8');
    echo "wrong_operation";
}


mysql_close($dbhandle);
exit();
?>