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

    <link href="js/sortable/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/sortable/jquery-ui-1.10.4.custom.js"></script>



    <script type="text/javascript" src="js/data_connector.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/preloader.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            getCategories(setCategories);

            function setCategories(data){

                for(var i=0; i<data.length; i++){
                     $("#sortable").append('<li class="ui-state-default">'+ data[i].category_name +'</li>');
                }
            }

            $(function() {
                $( "#sortable" ).sortable();
                $( "#sortable" ).disableSelection();
            });
        });
    </script>
</head>
<?php include 'admin_left_menu.php';?>

<div id="not_full_width">
          <ul id="sortable">
          </ul>




<form class="admin_forms" action="src/addbrand.php" method="post" enctype="multipart/form-data">
    <input class="admin_submit_buttons" type="submit" name="submit" value="Kaydet" />
</form>
</div>

</html>