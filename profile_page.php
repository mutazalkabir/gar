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

    <script type="text/javascript" src="js/TheGardrobeScripts/profile_page.js"></script>
    <script type="text/javascript" src="js/data_connector.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/preloader.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/dateConvertor.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/popupManager.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/showStatusPopup.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/showAllPopup.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMainPageFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMyFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createProfilePage.js"></script>
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
                    <span></span>

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
                <div id="profile_page_profile_picture">
                    <img src="images/dummy_images/avatar.png"/>
                </div>
        <div id="profile_page_header">
            <span id="profile_page_profile_name"></span>
            <div id="send_message_to_user" class="profile_buttons">
                <i class="fa fa-envelope-o"></i>
                <span>Mesaj Gönder</span>
            </div>
            <div id="follow_user" class="profile_buttons" following="false">
                <i class="fa fa-plus"></i>
                <span></span>
            </div>
        </div>
        <div id="profile_page_profile_information_bar">
            <span id="profile_description"></span>
            <div id="profile_info_holder">
                <div class="profile_info_item">
                    <span><i class="flaticon-wardrobe"></i></span>
                    <span id="total_gardrobe_count"></span>
                </div>
                <div class="profile_info_item">
                    <span><i class="flaticon-clothing1"></i></span>
                    <span id="total_hanger_count"></span>
                </div>
                <div class="profile_info_item">
                    <span><i class="fa fa-question"></i></span>
                    <span>Yakında</span>
                </div>
            </div>
        </div>
        <div id="following_followers_bar">
            <div id="followers">
                <span id="followers_bar">Takipçilerim <span id="follower_count"></span></span>
                <div id="followers_mcustomscrollbar">
                    <!--div class="uye_ara_uye_holder">
                        <div class="uye_ara_picture_holder">
                            <img src="images/dummy_images/profil.jpg" />
                        </div>
                        <span class="follower_profile_name_holder">Tunç</span>
                    </div-->

                </div>
            </div>
            <div id="following">
                <span id="following_bar">Takip Ettiklerim <span id="following_count"></span></span>
                <div id="following_mcustomscrollbar">

                </div>
            </div>
        </div>
        <div id="profile_page_gardrobes">
<!--            <div class="feed_item profile_feed_item">
                <span class="cloth_cover gardrobe">

                </span>
                <div class="cloth_photo gardrobe">
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                </div>
                <div class="profile_photo">
                    <img src="images/dummy_images/avatar.png">
                </div>

                <span class="tag_name feed_item_span">Spor Kıyafetler</span>
                <span class="gardrobe_name feed_item_span">İlk Gardrobe'um</span>

                <div class="like_comment_share_holder">
                    <div class="gardrobe_item_aski_count"><i class="flaticon-clothing1"></i>45 Askı</div>
                </div>
            </div>
            <div class="feed_item profile_feed_item">
                <span class="cloth_cover gardrobe">

                </span>
                <div class="cloth_photo gardrobe">
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                </div>
                <div class="profile_photo">
                    <img src="images/dummy_images/profil.jpg">
                </div>

                <span class="tag_name feed_item_span">Spor Kıyafetler</span>
                <span class="gardrobe_name feed_item_span">İlk Gardrobe'um</span>

                <div class="like_comment_share_holder">
                    <div class="gardrobe_item_aski_count"><i class="flaticon-clothing1"></i>45 Askı</div>
                </div>
            </div>
            <div class="feed_item profile_feed_item">
                <span class="cloth_cover gardrobe">

                </span>
                <div class="cloth_photo gardrobe">
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                </div>
                <div class="profile_photo">
                    <img src="images/dummy_images/profil.jpg">
                </div>

                <span class="tag_name feed_item_span">Spor Kıyafetler</span>
                <span class="gardrobe_name feed_item_span">İlk Gardrobe'um</span>

                <div class="like_comment_share_holder">
                    <div class="gardrobe_item_aski_count"><i class="flaticon-clothing1"></i>45 Askı</div>
                </div>
            </div>
            <div class="feed_item profile_feed_item">
                <span class="cloth_cover gardrobe">

                </span>
                <div class="cloth_photo gardrobe">
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                </div>
                <div class="profile_photo">
                    <img src="images/dummy_images/profil.jpg">
                </div>

                <span class="tag_name feed_item_span">Spor Kıyafetler</span>
                <span class="gardrobe_name feed_item_span">İlk Gardrobe'um</span>

                <div class="like_comment_share_holder">
                    <div class="gardrobe_item_aski_count"><i class="flaticon-clothing1"></i>45 Askı</div>
                </div>
            </div>
            <div class="feed_item profile_feed_item">
                <span class="cloth_cover gardrobe">

                </span>
                <div class="cloth_photo gardrobe">
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                    <img src="images/dummy_images/kiyafet.jpg" />
                </div>
                <div class="profile_photo">
                    <img src="images/dummy_images/profil.jpg">
                </div>

                <span class="tag_name feed_item_span">Spor Kıyafetler</span>
                <span class="gardrobe_name feed_item_span">İlk Gardrobe'um</span>

                <div class="like_comment_share_holder">
                    <div class="gardrobe_item_aski_count"><i class="flaticon-clothing1"></i>45 Askı</div>
                </div>
            </div>-->
        </div>
    </div>
</body>
</html>
