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
            getReports(setReports);

            function setReports(data){
                for(var i=0; i<data.length; i++){
                     $("#admin_tables_container table").append('<tr><td>'+ data[i].report_comment +'</td><td>'+ data[i].reporter +'</td><td>'+ data[i].reported +'</td><td><img style="max-width:200px; height:auto" src="storage/user_images/' + data[i].user_id + "/" + data[i].pic_id +'"></td><td>'+ data[i].about +'</td><td>'+ data[i].hanger_id +'</td><td><div class="delete_hanger" hanger_id="'+ data[i].hanger_id +'">Sil</div></td></tr>');
                }

                $(".delete_hanger").on("click",function(){
                    deleteHanger($(this).attr("hanger_id"));
                })
            }


        });
    </script>
</head>
<?php include 'admin_left_menu.php';?>

<div id="admin_tables_container">
    <table>
        <tr>
          <th>Şikayet Sebebi</th>
          <th>Şikayet Eden</th>
          <th>Askı Sahibi</th>
          <th>Askı Fotoğrafı</th>
          <th>Askı Hakkında</th>
          <th>Askı ID</th>
          <th>Askıyı Sil</th>
        </tr>
    </table>
</div>

</html>