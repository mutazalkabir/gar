<?php
/**
 * Created by PhpStorm.
 * User: mutaz_alkabir
 * Date: 08.06.2014
 * Time: 14:42
 */
?>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>TheGardrobe | Admin Login</title>

    <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700&subset=latin,greek-ext,latin-ext,greek' rel='stylesheet' type='text/css'>
    <link href="css/admin_css.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="js/helpers/browser_selector.js"></script>

    <!-- TheGardrobe Component Scripts -->
    <script type="text/javascript" src="js/helpers/jquery.js"></script>
    <script type="text/javascript" src="js/data_connector.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/preloader.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        $("#login_admin").on("click",function(){
        debugger
            var eMail = $("#login_e_mail").val();
            var atpos=eMail.indexOf("@");
            var dotpos=eMail.lastIndexOf(".");
            if (atpos<1 || dotpos<atpos+2 || dotpos+2>=eMail.length){
                $("#login_e_mail").addClass("wrong_email");
                $("#login_form_container").addClass("shake animatedSlow");
                setTimeout(function(){
                    $("#login_form_container").removeClass("shake animatedSlow");
                },1000);
                $("#login_e_mail").focus();
                setTimeout(function(){
                    $("#login_e_mail, #login_password").removeClass("wrong_email");
                },2000);
                return false;
            }
            else{
                if($.trim($("#login_password").val()).length < 6 || $.trim($("#login_password").val()) == ""){
                    $("#login_password").addClass("wrong_email");
                    $("#login_form_container").addClass("shake animatedSlow");
                    setTimeout(function(){
                        $("#login_e_mail, #login_password").removeClass("wrong_email");
                    },2000);
                    setTimeout(function(){
                        $("#login_form_container").removeClass("shake animatedSlow");
                    },1000);
                    return false;
                }
                else{
                    login($("#login_e_mail").val(),$("#login_password").val());
                }
            }
        });
        </script>
    });
</head>

    <div id="form_container">
    	<img id="admin_logo" src="images/logo.png" alt="The Gardrobe Logo">
        <form action="src/adminlogin.php" method = "post">
            <input type="username" id="usename" name="username" placeholder="Kullanıcı Adı">
            <input type="password" id="password" name="password" placeholder="Şifre">
            <button id="login_admin" type = "submit">Giriş</button>
        </form>
    </div>
</html>