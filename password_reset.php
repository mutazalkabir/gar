<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 13.06.2014
 * Time: 23:39
 */


?>
<?php
/**
 * Created by PhpStorm.
 * User: mutazalkabir
 * Date: 27.05.2014
 * Time: 23:54
 */

//error_reporting(E_ALL ^ E_DEPRECATED);
//include 'login.php';
//session_name('thegardrobeLogin');
// Starting the session

//session_set_cookie_params(2*7*24*60*60);
// Making the cookie live for 2 weeks
//session_name('gardrobeLogin');
session_start();


// If you are logged in, but you don't have the tzRemember cookie (browser restart)
// and you have not checked the rememberMe checkbox:




?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>TheGardrobe</title>

    <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700&subset=latin,greek-ext,latin-ext,greek' rel='stylesheet' type='text/css'>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css" />
    <link href="css/flaticon.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/helpers/browser_selector.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mCustomScrollbar.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mousewheel.js"></script>

    <!-- TheGardrobe Component Scripts -->
    <script type="text/javascript" src="js/TheGardrobeScripts/cookieUtils.js"></script>
    <script type="text/javascript" src="js/data_connector.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/dateConvertor.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/popupManager.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMainPageFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMyFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/newsletter.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/login_register.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createNewAski.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createPersonalMessages.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createNotifications.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/messaging.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/gardrobeKaristir.js"></script>
    <script type="text/javascript" src="js/helpers/domGenerator.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <!-- TheGardrobe Component Scripts -->
</head>

<body>
<div id="body_background_image">

</div>
<div id="login_contents">
    <img class="logo" src="images/logo.png" alt="The Gardrobe Logo">

    <div id="confirmation_form_container">
        <!--action="src/confirm.php" method="post" enctype="multipart/form-data"-->
        <form id="reset_pass" action="src/resetpassword.php">
            <span class="register_title">E-Posta Adresinizi Giriniz</span>
            <input type="text" name="mail" id="mail" />
            <span class="register_title">E-Postanıza Gönderilen Güvenlik Kodunu Giriniz</span>
            <input type="text" name="confirmation_code" id="confirmation_code" />
            <span class="register_title">Yeni Şifrenizi Giriniz</span>
            <input name="login_password" id="login_password" placeholder="Yeni Şifreniz" type="password">
            <button id="submit" type="submit"/>Gönder</button>
        </form>
    </div>
</div>
</body>
</html>


