/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 08.04.2014
 * Time: 15:31
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){
    var thegardrobe = {

    }
    /* Ana Sayfa Main Feed
     ================================================== */
        getMainPageFeed();
    /*================================================== */

    /* Personal Messages
     ================================================== */
        createPersonalMessages();
    /*================================================== */

    /* Personal Messages
     ================================================== */
    $("#search_input").on("click",function(){
        $('#mydate').glDatePicker();
        gardrobeKaristir();
        $(".gardrobe_karistir_sub_items_content_holder").mCustomScrollbar();
    });

/*    $("#search_input").on("blur",function(){
        removeGardrobeKaristir();
    });*/
    /*================================================== */

    /* Personal Notifications
     ================================================== */
        createNotifications();
    /*================================================== */

    /* Ana Sayfa My Feed
     ================================================== */
        createMyFeed();
    /*================================================== */  

    /* Ana Sayfa My Feed
     ================================================== */
    $("#new_aski_button").on("click",function(){
        openAddAskiPopup();
    });
    /*================================================== */

    /* Profil Sayfası
     ================================================== */

    $("#following_mcustomscrollbar").mCustomScrollbar();
    $("#followers_mcustomscrollbar").mCustomScrollbar();

    $("#following_followers_bar").on("mouseenter",function(){
        setTimeout(function(){
            $("#followers_mcustomscrollbar").mCustomScrollbar("update");
            $("#following_mcustomscrollbar").mCustomScrollbar("update");
        },300);
    });

    $("#following_followers_bar").on("mouseleave",function(){
        setTimeout(function(){
            $("#followers_mcustomscrollbar").mCustomScrollbar("update");
            $("#following_mcustomscrollbar").mCustomScrollbar("update");
        },300);
    });
    /*================================================== */

    /* Mesaj Detay
     ================================================== */
    $("#messages_detail_content_holder").mCustomScrollbar();
    /*================================================== */

    /* Aski Popup
     ================================================== */
    $(".feed_item").on("click",function(){
        showPopup();
    });
    /*================================================== */

    /* General
     ================================================== */
    $(".topbar_items").on("click",function(){
        if($(this).attr("hasnewitem") == "true"){
            $(this).attr("hasnewitem","false");
        }

        if($(this).hasClass("active_topbar_item")){
            $(this).removeClass("active_topbar_item");
            $(this).find(".topbar_items_submenus").css("display","none");
            $(this).find(".topbar_items_submenus").removeClass("topbar_items_visible");
        }
        else{
            $(".topbar_items_submenus").css("display","none");
            $(this).find(".topbar_items_submenus").css("display","block");
            $(".topbar_items").removeClass("active_topbar_item");
            $(this).find(".topbar_items_submenus").addClass("topbar_items_visible");
            $(this).addClass("active_topbar_item");

            $("#messages_content").mCustomScrollbar("update");
            $("#notifications_content").mCustomScrollbar("update");
        }
    });

    $("#reveal_right_block_button").on("click",function(){
        if($("#right_block").hasClass("reveal_right_block")){
            $("#right_block").removeClass("reveal_right_block");
        }
        else{
            $("#right_block").addClass("reveal_right_block");
        }
    });

    $("#messages_topbar").find("a").on("click",function(){
        createNewMessage();
    });

    $("#topbar_profile_picture_and_name").find("span:first-of-type").on("click",function(){
        window.location = "profile_page.html";
    });

    $("#main_logo").on("click",function(){
        window.location = "index.html";
    });

    $(".settings_submenu_items:first-child").on("click",function(){
        window.location = "personal_settings.html";
    });

    $(".settings_submenu_items:last-child").on("click",function(){
        window.location = "login_register.html";
    });

    $(window).resize(function() {
        var windowWidth = $(window).width();
        var searchBar = $("#search_input");
        var searchBarWidth = $("#search_input").width();
        if(windowWidth < 1065){

            searchBar.css("width", searchBarWidth - 1 + "px;");
            console.log(searchBar.width());
        }
    });
    /*================================================== */
});
