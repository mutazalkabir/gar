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

if(isset($_SESSION['user_id']))/* && !$_SESSION['userid']*/ //&& !isset($_COOKIE['thegardrobeRemember']) && !$_SESSION['rememberMe'])
{
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
    <link href="css/flaticon_gardrobe.css" rel="stylesheet" type="text/css" />
    <link href="css/datePicker.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/helpers/browser_selector.js"></script>
    <script type="text/javascript" src="js/helpers/photo_tagging/jquery.dev.1.7.1.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mCustomScrollbar.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mousewheel.js"></script>

    <!-- TheGardrobe Component Scripts -->
         <script type="text/javascript" src="js/TheGardrobeScripts/cookieUtils.js"></script>
     <script type="text/javascript" src="js/TheGardrobeScripts/thegardrobe.js"></script>

    <script type="text/javascript" src="js/data_connector.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/preloader.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/dateConvertor.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/popupManager.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/showStatusPopup.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/showAllPopup.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMainPageFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMyFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/newsletter.js"></script>

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
    <script type="text/javascript" src="js/scripts.js"></script>
    <!-- TheGardrobe Component Scripts -->

    <link media="screen" type="text/css" href="css/photo_tagging/jquery-ui-1.8.17.custom.css" rel="stylesheet">
    <link media="screen" type="text/css" href="css/photo_tagging/styles2.css" rel="stylesheet">
    <script type="text/javascript" src="js/helpers/photo_tagging/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="js/helpers/photo_tagging/jquery.phototag.js"></script>

    <style type="text/css">
        #page_contents{
            padding-top: 140px;
        }
    </style>
</head>

<body>
    <div id="main_navigation_bar">
        <div id="navigation_bar_contents">
            <div id="main_logo"></div>
            <input id="search_input" readonly="readonly" type="text" placeholder="Gardrobe Karıştır">
            <div id="gardrobe_karistir">
                <div id="gardrobe_karistir_overflow_holder">
                    <div id="gardrobe_karistir_overflow">
                        <div class="gardrobe_karistir_sub_items_holder" id="search_user">
                            <span>Üye Ara</span>
                            <div class="gardrobe_karistir_sub_items_content_holder">

                                <!--div class="uye_ara_uye_holder">
                                    <div class="uye_ara_picture_holder">
                                        <img src="images/dummy_images/profil.jpg" />
                                    </div>
                                    <span class="follower_profile_name_holder">Tunç</span>
                                </div>
                                <div class="uye_ara_uye_holder">
                                    <div class="uye_ara_picture_holder">
                                        <img src="images/dummy_images/profil.jpg" />
                                    </div>
                                    <span class="follower_profile_name_holder">Tunç</span>
                                </div>
                                <div class="uye_ara_uye_holder">
                                    <div class="uye_ara_picture_holder">
                                        <img src="images/dummy_images/profil.jpg" />
                                    </div>
                                    <span class="follower_profile_name_holder">Tunç</span>
                                </div>
                                <div class="uye_ara_uye_holder">
                                    <div class="uye_ara_picture_holder">
                                        <img src="images/dummy_images/profil.jpg" />
                                    </div>
                                    <span class="follower_profile_name_holder">Tunç</span>
                                </div>
                                <div class="uye_ara_uye_holder">
                                    <div class="uye_ara_picture_holder">
                                        <img src="images/dummy_images/profil.jpg" />
                                    </div>
                                    <span class="follower_profile_name_holder">Tunç</span>
                                </div>
                                <div class="uye_ara_uye_holder">
                                    <div class="uye_ara_picture_holder">
                                        <img src="images/dummy_images/profil.jpg" />
                                    </div>
                                    <span class="follower_profile_name_holder">Tunç</span>
                                </div-->

                                <input id="gardrobe_karistir_user_search" type="text" placeholder="Üye İsmi Giriniz">
                                <button>Üye Ara</button>
                            </div>
                        </div>
                        <div class="gardrobe_karistir_sub_items_holder" id="gardrobe_categories">

                            <span>Gardrobe Kategorileri</span>

                            <div class="gardrobe_karistir_sub_items_content_holder gardrobe_categories_scrollbar">

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-bikini4"></i></div>
                                    <span class="category_name">Şık</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-biretta"></i></div>
                                    <span class="category_name">Spor</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-black137"></i></div>
                                    <span class="category_name">Casual</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-black280"></i></div>
                                    <span class="category_name">Business</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-bowler"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-dress"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-fedora"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-male200"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-necktie"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-necktie1"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-sexy3"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-sneaker"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-sports8"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-tie"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-two28"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                                <div class="gardrobe_karistir_category_items">
                                    <div class="category_holder"><i class="flaticon-gardrobe-uniform"></i></div>
                                    <span class="category_name">Gece</span>
                                </div>

                            </div>

                        </div>
                        <div class="gardrobe_karistir_sub_items_holder" id="brands_holder">
                            <span>Markalar</span>
                            <div class="gardrobe_karistir_sub_items_content_holder">
                                <div class="gardrobe_karistir_brands">
                                    <div class="brands_holder">
                                        <div class="brand_logo">
                                            <img src="images/brand_images/koton_logo.png"/>
                                        </div>
                                        <span class="brand_name">Koton</span>
                                    </div>
                                </div>
                                <div class="gardrobe_karistir_brands">
                                    <div class="brands_holder">
                                        <div class="brand_logo">
                                            <img src="images/brand_images/hm_logo.png"/>
                                        </div>
                                        <span class="brand_name">H&M</span>
                                    </div>
                                </div>
                                <div class="gardrobe_karistir_brands">
                                    <div class="brands_holder">
                                        <div class="brand_logo">
                                            <img src="images/brand_images/tommy_hilfiger_logo.png"/>
                                        </div>
                                        <span class="brand_name">Tommy Hilfiger</span>
                                    </div>
                                </div>
                                <div class="gardrobe_karistir_brands">
                                    <div class="brands_holder">
                                        <div class="brand_logo">
                                            <img src="images/brand_images/zara_logo.png"/>
                                        </div>
                                        <span class="brand_name">Zara</span>
                                    </div>
                                </div>

                                <span id="show_all_brands">Hepsini Göster</span>
                            </div>
                        </div>
                        <div class="gardrobe_karistir_sub_items_holder" id="date_search">
                            <span>Yayınlandığı Tarihe Göre Ara</span>
                            <div class="gardrobe_karistir_sub_items_content_holder">
                                <div class="turn-me-into-datepicker" id="date-view1">
                                    The contents of this div will be replaced by the inline datePicker.
                                </div>

                            </div>
                        </div>
                        <div class="gardrobe_karistir_sub_items_holder" id="place_search">
                            <span>Yayınlandığı Yere Göre Ara</span>
                            <div class="gardrobe_karistir_sub_items_content_holder" id="place">
                                <span><i class="fa fa-caret-right"></i>İstanbul</span>
                                <span><i class="fa fa-caret-right"></i>Ankara</span>
                                <span><i class="fa fa-caret-right"></i>İzmir</span>
                                <span><i class="fa fa-caret-right"></i>Antalya</span>
                                <span><i class="fa fa-caret-right"></i>Bodrum</span>
                                <span><i class="fa fa-caret-right"></i>Konya</span>
                                <span><i class="fa fa-caret-right"></i>Trabzon</span>
                                <span id="show_all_cities">Hepsini Göster</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="messages_notifications_etc_holder">
                <div id="topbar_profile_picture_and_name">
                    <img id="avatar" src="images/dummy_images/profil.jpg"/>
                    <span id="logged_in_user_name"></span>

                    <span id="new_aski_button"><i class="flaticon-clothing1"></i>Askı Ekle</span>
                </div>
                <div id="notifications" class="topbar_items" hasNewItem="true">
                    <i class="fa fa-globe"></i>
                    <div class="notification_count_holder">3</div>
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
        <div id="all_or_followers_only_selector">
            <span class="active_selector_span">Takip Ettiklerim</span>
            <span>Herkes</span>            
        </div>
    </div>
</body>
</html>

<?php
}

else{
    $_SESSION = array();
    session_destroy();
    header("Location: login_register.php");
    // Destroy the session
}
?>