
<?php
include "src/sessionTest.php";
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
    <link href="css/flaticon_gardrobe.css" rel="stylesheet" type="text/css" />
    <link href="css/datePicker.css" rel="stylesheet" type="text/css" />
    <link href="css/photo_cropping/cropper.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/helpers/browser_selector.js"></script>
    <script type="text/javascript" src="js/helpers/photo_tagging/jquery.dev.1.7.1.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mCustomScrollbar.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mousewheel.js"></script>

    <!-- TheGardrobe Component Scripts -->
    <script type="text/javascript" src="js/TheGardrobeScripts/cookieUtils.js"></script>
    <script type="text/javascript" src="js/data_connector.js"></script>
    <script type="text/javascript" src="js/helpers/mask_input.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/preloader.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/dateConvertor.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/popupManager.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/showStatusPopup.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMainPageFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMyFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/newsletter.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/login_register.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createNewAski.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createPersonalMessages.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createNotifications.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/messaging.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/gardrobeKaristir.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMessagingDetail.js"></script>
    <script type="text/javascript" src="js/helpers/domGenerator.js"></script>
    <script type="text/javascript" src="js/helpers/dataPicker.js"></script>
    <script type="text/javascript" src="js/helpers/date.js"></script>
    <script type="text/javascript" src="js/helpers/ajaxform.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/personal_settings.js"></script>
    <script type="text/javascript" src="js/helpers/photo_cropping/cropper.js"></script>
    <!-- TheGardrobe Component Scripts -->

    <link media="screen" type="text/css" href="css/photo_tagging/jquery-ui-1.8.17.custom.css" rel="stylesheet">
    <link media="screen" type="text/css" href="css/photo_tagging/styles2.css" rel="stylesheet">
    <script type="text/javascript" src="js/helpers/photo_tagging/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="js/helpers/photo_tagging/jquery.phototag.js"></script>

    <style type="text/css">
        .feed_item{
            display: none;
        }

        #profile_page_gardrobes .feed_item{
            display: inline-block;
        }
    </style>

    <script type="text/javascript">


        window.thegardrobe= new Thegardrobe();
        $(document).ready(function(){


            thegardrobe.init();

            $('#profile_pic_browse').live('change', function(){
                $("#upload_new_profile_image").ajaxForm({
                    target: '#img_container',
                    success: function(){
                        $(".cropper").cropper({
                            aspectRatio: 1,
                            done: function(data) {
                            console.log(data);
                                $("#x").val(data.x1);
                                $("#y").val(data.y1);
                                $("#min_side").val(data.width);
                            }
                        });
                    }
                }).submit();
            });

            $("#deactivate_account").on("click",function(){
                showStatusPopup("Hesabınızı dondurdunuz :/ <br> Tekrar kullanıcı adınız ve şifrenizle giriş yapıp, TheGardrobe keyfine kaldığınız yerden devam edebilirsiniz :)", "error", deactivateAccount());
                deactivateAccount(window.user[0].user_id,function(){
                    setTimeout(function(){
                        logoff();
                        window.location = "login_register.php";
                    },2000);
                });
            });
        })
    </script>
</head>

<body>
    <div id="main_navigation_bar">
        <div id="navigation_bar_contents">
            <div id="main_logo"></div>
            <input id="search_input" readonly="readonly" type="text" placeholder="Gardrobe Karıştır">
            <?php include 'gardrobe_karistir.php';?>
            <div id="messages_notifications_etc_holder">
                <div id="topbar_profile_picture_and_name">
                    <img id="avatar" src="images/dummy_images/profil.jpg"/>
                    <span>Tunç</span>

                    <span id="new_aski_button"><i class="flaticon-clothing1"></i>Askı Ekle</span>
                </div>
                <div id="notifications" class="topbar_items" hasNewItem="false">
                    <i class="fa fa-globe"></i>
                    <div class="notification_count_holder"></div>
                    <div class="topbar_items_submenus" id="notifications_submenu">
                        <div id="notifications_content">

                        </div>
                    </div>
                </div>
                <div id="messages" class="topbar_items"  hasNewItem="false">
                    <i class="fa fa-comments"></i>
                    <div class="notification_count_holder"></div>
                    <div class="topbar_items_submenus" id="messages_submenu">
                        <div id="messages_topbar">
                            <i class="fa fa-comments-o"></i>
                            <a href="#">Yeni Mesaj Gönder</a>
                        </div>
                        <div id="messages_content">

                        </div>
                    </div>
                </div>
                <div id="config" class="topbar_items">
                    <i class="fa fa-cog"></i>
                    <div class="topbar_items_submenus" id="settings_submenu">
                        <div id="settings_content">
                            <div class="settings_submenu_items"><i class="fa fa-terminal"></i><span>Ayarlarım</span></div>
                            <div class="settings_submenu_items"><i class="fa fa-power-off"></i><span>Çıkış Yap</span></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="reveal_right_block_button">
                <i class="fa fa-align-justify fa-6"></i>
            </div>
        </div>
    </div>
    <div id="right_block">
        <div id="my_feed">

        </div>
        <div id="ads"></div>
    </div>

    <div id="page_contents" class="clearfix">

        <span id="personal_settings_page_header">
            Ayarlarım
        </span>
        <div id="img_container">
<!--            <img class="cropper" src="images/dummy_images/profil.jpg">-->
        </div>

        <form id="upload_new_profile_image" method="post" enctype="multipart/form-data" name="image_upload_form" id="image_upload_form" action="src/upload_avatar.php">
            <div id="psp_profile_picture_holder">
                <!--img src="images/dummy_images/profil.jpg"/-->
                <div id="profile_pic_browse_wrapper">Fotoğraf Yükle
                    <input type="file" name="file" id="profile_pic_browse">
                </div>
            </div>
        </form>


        <table id="edit_personal_settings">
            <tr>
                <td>Ad</td>
                <td><input id="settings_page_name" placeholder="Ad" type="text"></td>
            </tr>
            <tr>
                <td>Soyad</td>
                <td><input id="settings_page_surname"  placeholder="Soyad" type="text"></td>
            </tr>
            <tr>
                <td>E-Posta</td>
                <td><input id="settings_page_mail"  disabled type="text"></td>
            </tr>
            <tr>
                <td>Telefon Numarası</td>
                <td><input id="settings_page_phone"  placeholder="Telefon Numarası" type="text"></td>
            </tr>
            <tr>
                <td>Yeni Şifre</td>
                <td><input id="settings_page_pass1"  placeholder="Yeni Şifre" type="password"></td>
            </tr>
            <tr>
                <td>Yeni Şifre Tekrar</td>
                <td><input id="settings_page_pass2" placeholder="Yeni Şifre Tekrar" type="password"></td>
            </tr>
            <tr>
                <td>Kendini Tanıt</td>
                <td><textarea maxlength="130" id="settings_page_about" placeholder="Kendini Tanıt"></textarea></td>
            </tr>
            <tr>
                <td>Şehir</td>
                <td>
                    <select id="settings_page_city">
                        <option selected>Şehir Adı Giriniz</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="hidden" id="x" name="x" value="error"/>
                    <input type="hidden" id="y" name="y" />
                    <input type="hidden" id="min_side" name="min_side" />
                    <button id="save_personal_settings">Değişiklikleri Kaydet</button>

                    <button id="deactivate_account">Hesabımı Dondur</button>
                </td>
            </tr>
        </table>

    </div>
</body>
</html>
