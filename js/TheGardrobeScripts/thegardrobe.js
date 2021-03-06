/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 29.05.2014
 * Time: 18:17
 * To change this template use File | Settings | File Templates.
 */

var Thegardrobe = function(){

    var _this=this;

    _this.initMainPage= function()
    {

        cities = ["ADANA","ADIYAMAN","AFYONKARAHİSAR", "AĞRI","AMASYA","ANKARA","ANTALYA","ARTVİN","AYDIN", "BALIKESİR","BİLECİK","BİNGÖL","BİTLİS","BOLU", "BURDUR","BURSA","ÇANAKKALE","ÇANKIRI","ÇORUM", "DENİZLİ","DİYARBAKIR","EDİRNE","ELAZIĞ","ERZİNCAN", "ERZURUM","ESKİŞEHİR","GAZİANTEP","GİRESUN", "GÜMÜŞHANE","HAKKARİ","HATAY","ISPARTA","MERSİN", "İSTANBUL","İZMİR","KARS","KASTAMONU","KAYSERİ", "KIRKLARELİ","KIRŞEHİR","KOCAELİ","KONYA","KÜTAHYA", "MALATYA","MANİSA","KAHRAMANMARAŞ","MARDİN","MUĞLA", "MUŞ","NEVŞEHİR","NİĞDE","ORDU","RİZE","SAKARYA", "SAMSUN","SİİRT","SİNOP","SİVAS","TEKİRDAĞ","TOKAT", "TRABZON","TUNCELİ","ŞANLIURFA","UŞAK","VAN", "YOZGAT","ZONGULDAK","AKSARAY","BAYBURT","KARAMAN", "KIRIKKALE","BATMAN","ŞIRNAK","BARTIN","ARDAHAN","IĞDIR", "YALOVA","KARABÜK","KİLİS","OSMANİYE","DÜZCE"];
        try
        {
        window.user = JSON.parse(window.readCookie("user"));
        }
        catch(e)
        {
            logoff();
        }
        window.gardrobeKaristirOpened = false;

        $("#topbar_profile_picture_and_name span:first-of-type").text(window.user[0].name);
        $("#avatar").attr("src", "storage/user_images/avatars/"+window.user[0].pic_id);


        /* Ana Sayfa Main Feed
         ================================================== */

        $.urlParam = function(name){
            var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (results==null){
                return null;
            }
            else{
                return results[1] || 0;
            }
        }
        debugger
        var gardrobe_id = decodeURIComponent($.urlParam('gardrobe_id'));
        var type = decodeURIComponent($.urlParam('type'));
        var type_id =decodeURIComponent($.urlParam('type_id'));
        var start_date =decodeURIComponent($.urlParam('start_date'));
        var end_date =decodeURIComponent($.urlParam('end_date'));
        if(gardrobe_id!="null")
        {
            $("#all_or_followers_only_selector").css("display","none");
            searchResult("gardrobe",gardrobe_id,createMainPageFeed)
        }
        else if(start_date!="null")
        {
            searchResultbyDate("date",start_date,end_date,createMainPageFeed);
        }

        else if(type!="null")
        {
            searchResult(type,type_id,createMainPageFeed)
        }
        else
        {
            $("#all_or_followers_only_selector").css("display","block");
            getMainPageFeed("fellowed", createMainPageFeed);

        }

        if(type_id!="null" || type!="null")
        {
            $("#all_or_followers_only_selector").css("display","none");
        }


        /*================================================== */

        /* Personal Messages
         ================================================== */
        getAllConversations(window.user[0].user_id);
        /*================================================== */

        /* Personal Messages
         ================================================== */
/*        $(".gardrobe_categories_scrollbar").mCustomScrollbar();*/
        $("#search_input").on("click",function(){
            if(window.gardrobeKaristirOpened == false){
                gardrobeKaristir();
            }
            else{
                removeGardrobeKaristir();
            }
        });
        /*================================================== */

        /* Personal Notifications
         ================================================== */
        getNotifications(window.user[0].user_id ,createNotifications);

        /*================================================== */

        /* Ana Sayfa My Feed
         ================================================== */
        createMyFeed(window.user[0].user_id, setMyFeed);
        /*================================================== */

        /* Ana Sayfa My Feed
         ================================================== */
        $("#new_aski_button").on("click",function(){
            openAddAskiPopup();
        });
        /*================================================== */

        /* Profil Sayfası
         ================================================== */
        $.urlParam = function(name){
            var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (results==null){
                return null;
            }
            else{
                return results[1] || 0;
            }
        }

       // getGardrobesForProfilePage(decodeURIComponent($.urlParam('user_id')));
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
            window.location = "profile_page.php?user_id=" + window.user[0].user_id;
        });

        $("#main_logo").on("click",function(){
            window.location = "index.php";
        });

        $(".settings_submenu_items:first-child").on("click",function(){
            window.location = "personal_settings.php";
        });

        $(".settings_submenu_items:last-child").on("click",function(){
            debugger
            logoff();

        });
    }
    _this.initSearchResultsPage= function()
    {

            searchResult("gardrobe",$(this).attr("gardrobe_id"),createMainPageFeed)


        cities = ["ADANA","ADIYAMAN","AFYONKARAHİSAR", "AĞRI","AMASYA","ANKARA","ANTALYA","ARTVİN","AYDIN", "BALIKESİR","BİLECİK","BİNGÖL","BİTLİS","BOLU", "BURDUR","BURSA","ÇANAKKALE","ÇANKIRI","ÇORUM", "DENİZLİ","DİYARBAKIR","EDİRNE","ELAZIĞ","ERZİNCAN", "ERZURUM","ESKİŞEHİR","GAZİANTEP","GİRESUN", "GÜMÜŞHANE","HAKKARİ","HATAY","ISPARTA","MERSİN", "İSTANBUL","İZMİR","KARS","KASTAMONU","KAYSERİ", "KIRKLARELİ","KIRŞEHİR","KOCAELİ","KONYA","KÜTAHYA", "MALATYA","MANİSA","KAHRAMANMARAŞ","MARDİN","MUĞLA", "MUŞ","NEVŞEHİR","NİĞDE","ORDU","RİZE","SAKARYA", "SAMSUN","SİİRT","SİNOP","SİVAS","TEKİRDAĞ","TOKAT", "TRABZON","TUNCELİ","ŞANLIURFA","UŞAK","VAN", "YOZGAT","ZONGULDAK","AKSARAY","BAYBURT","KARAMAN", "KIRIKKALE","BATMAN","ŞIRNAK","BARTIN","ARDAHAN","IĞDIR", "YALOVA","KARABÜK","KİLİS","OSMANİYE","DÜZCE"];

        window.user = JSON.parse(window.readCookie("user"));
        window.gardrobeKaristirOpened = false;

        $("#topbar_profile_picture_and_name span:first-of-type").text(window.user[0].name);
        $("#avatar").attr("src", "storage/user_images/avatars/"+window.user[0].pic_id);


        /* Ana Sayfa Main Feed
         ================================================== */
        var searchResults = localStorage.getItem("new_aski_data");
        var searchResultsJSON = JSON.parse(searchResults);


       //
        //createMainPageFeed(searchResultsJSON)
        /*================================================== */

        /* Personal Messages
         ================================================== */
        getAllConversations(window.user[0].user_id);
        /*================================================== */

        /* Personal Messages
         ================================================== */
        /*        $(".gardrobe_categories_scrollbar").mCustomScrollbar();*/
        $("#search_input").on("click",function(){
            if(window.gardrobeKaristirOpened == false){
                gardrobeKaristir();
            }
            else{
                removeGardrobeKaristir();
            }
        });
        /*================================================== */

        /* Personal Notifications
         ================================================== */
        getNotifications(window.user[0].user_id ,createNotifications);

        /*================================================== */

        /* Ana Sayfa My Feed
         ================================================== */
        createMyFeed(window.user[0].user_id, setMyFeed);
        /*================================================== */

        /* Ana Sayfa My Feed
         ================================================== */
        $("#new_aski_button").on("click",function(){
            openAddAskiPopup();
        });
        /*================================================== */

        /* Profil Sayfası
         ================================================== */
        $.urlParam = function(name){
            var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (results==null){
                return null;
            }
            else{
                return results[1] || 0;
            }
        }

        getGardrobesForProfilePage(decodeURIComponent($.urlParam('user_id')));
        /*================================================== */

        /* Mesaj Detay
         ================================================== */
        $("#messages_detail_content_holder").mCustomScrollbar();
        /*================================================== */

        /* Aski Popup
         ================================================== */

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
            window.location = "profile_page.php?user_id=" + window.user[0].user_id;
        });

        $("#main_logo").on("click",function(){
            window.location = "index.php";
        });

        $(".settings_submenu_items:first-child").on("click",function(){
            window.location = "personal_settings.php";
        });

        $(".settings_submenu_items:last-child").on("click",function(){
            debugger
            logoff();

        });
    }
}