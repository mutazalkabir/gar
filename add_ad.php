<?php
/**
 * Created by PhpStorm.
 * User: mutaz_alkabir
 * Date: 08.06.2014
 * Time: 14:42
 */
include "src/adminSessionTest.php";
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
            getBrands(setBrands);

            function setBrands(data){
                for(var i=0; i<data.length; i++){
                     $("#admin_tables_container table").append('<tr><td>'+ data[i].brand_name +'</td><td><img src="storage/brand_images/'+ data[i].brand_pic +'"/></td></tr>');
                }
            }
        });
    </script>
</head>
<?php include 'admin_left_menu.php';?>

<div id="admin_tables_container">
    <form class="admin_forms" action="src/addad.php" method="post" enctype="multipart/form-data">
        <div class="admin_page_form_header">Yeni Öğe Ekle</div>
        <input type="file" name="file" id="file" />
        <input type="text" id="ad_name" name="ad_name">
        <input class="admin_submit_buttons" type="submit" name="submit" value="ekle" />
    </form>
</div>

</html>