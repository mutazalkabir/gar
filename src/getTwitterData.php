<?php
ob_start();
require("twitter/twitteroauth.php");
require 'config/twconfig.php';
require 'config/functions.php';
include "config/dbconfig.php";
include "utils.php";
session_start();

if (!empty($_GET['oauth_verifier']) && !empty($_SESSION['oauth_token']) && !empty($_SESSION['oauth_token_secret'])) {
    // We've got everything we need
    $twitteroauth = new TwitterOAuth(YOUR_CONSUMER_KEY, YOUR_CONSUMER_SECRET, $_SESSION['oauth_token'], $_SESSION['oauth_token_secret']);
// Let's request the access token
    $access_token = $twitteroauth->getAccessToken($_GET['oauth_verifier']);
// Save it in a session var
    $_SESSION['access_token'] = $access_token;
// Let's get the user's info
    $user_info = $twitteroauth->get('account/verify_credentials');
// Print user's info
   // echo '<pre>';


    $id=$user_info->id;

    $words = explode(' ', $user_info->name);
    $mail=$id."@thegardrobe.com";

    $name=$words[0];

    $surname=$words[1];

    $pass=$id;


    $bdate ="392508000";

    $date = new DateTime();
    $date=$date->getTimestamp();
    $confirmation_code = genarateID();


    $result = mysql_query("SELECT * FROM `users` WHERE twid='$id' AND confirm=1 limit 1");

    while($row = mysql_fetch_assoc($result)) {
        $data[] = $row;

    }

    if(isset($data[0]["user_id"]))//if user registered
    {
        header('Location: ../login_register.php?twid='.$id);
        die();
    }else
    {
        $insert = mysql_query("INSERT INTO users VALUES('','$name','$surname','$bdate','$date','$mail','1','0','$pass','','','avatar.png','$confirmation_code','','','1','','$id')");

        $user_id = mysql_insert_id();
        $insert2 = mysql_query("INSERT INTO gardrobe VALUES ('','$user_id','ilk gardrobum','genel','$date')");


    }



    if (isset($user_info->error)) {
        // Something's wrong, go back to square 1  
        header('Location: login-twitter.php');
    } else {

        header('Location: ../login_register.php?twid='.$id);
	  /* $twitter_otoken=$_SESSION['oauth_token'];
	   $twitter_otoken_secret=$_SESSION['oauth_token_secret'];
	   $email='';
        $uid = $user_info->id;
        $username = $user_info->name;
        $user = new User();
        $userdata = $user->checkUser($uid, 'twitter', $username,$email,$twitter_otoken,$twitter_otoken_secret);
        if(!empty($userdata)){
            session_start();
            $_SESSION['id'] = $userdata['id'];
            $_SESSION['oauth_id'] = $uid;
            $_SESSION['username'] = $userdata['username'];
            $_SESSION['oauth_provider'] = $userdata['oauth_provider'];
            header("Location: home.php");
        }*/
    }
} else {
    // Something's missing, go back to square 1
    header('Location: ../login_register.php');
}
?>
