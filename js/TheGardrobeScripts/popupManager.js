/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 16:35
 * To change this template use File | Settings | File Templates.
 */

showPopup = function(askiDetayData, allFeed, orderNumber, fromMainFeed, _hasArrowButtons){
    if(askiDetayData.length > 0){
        askiDetayData = askiDetayData[0];
    }
    if(fromMainFeed == true){
        var askiDetay = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"glass"},
            htmlContent:'<div id="glass_inner" class="bounceInLeft animated">' +
                            '<i id="close_popup" class="fa fa-times fa-2"></i>' +
                                '<div id="glass_inner_shadow">' +

                                '</div> '+
                        '</div> '
        }));
    }
    else{
        var askiDetay = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"glass"},
            htmlContent:'<div id="glass_inner" class="">' +
                            '<i id="close_popup" class="fa fa-times fa-2"></i>' +
                                '<div id="glass_inner_shadow">' +

                                '</div> '+
                        '</div> '
        }));
    }


    $("body").append(askiDetay);
    $('html').off("click");
    $('html').click(function(e) {
        if(e.target.id == "glass"){
            $("#close_popup").trigger("click");
        }
    });

    var askiContentsHolder = $("#glass_inner_shadow");
    if(askiDetayData.comments != undefined){
        var commentCount = askiDetayData.comments.length;
    }
    else{
        var commentCount = 0;
    }

    if(askiDetayData.shares != undefined){
        var shareCount = askiDetayData.shares.length;
    }
    else{
        var shareCount = 0;
    }

    if(askiDetayData.likes != undefined){
        var likeCount = askiDetayData.likes.length;
    }
    else{
        var likeCount = 0;
    }

    var city = askiDetayData.city;
    var place = askiDetayData.place;

    if(city == "Şehir Seçiniz"){
        city = "-";
    }

    if(place == ""){
        place = "-";
    }

    var askiProfileItems = $(GenerateDomElement({
        nodeType:"div",
        attributes:{"id":"popup_profile_holder"},
        htmlContent:'<div user_id="'+ askiDetayData.user_id +'" id="popup_profile_picture" class="popup_profile_items">' +
                        '<img src="storage/user_images/avatars/'+ askiDetayData.avatar +'" />'+
                    '</div>'+

                    '<div user_id="'+ askiDetayData.user_id +'" id="popup_profile_name" class="popup_profile_items">'+ askiDetayData.name + " " + askiDetayData.surname +'</div>'+
                    "<div id='popup_aski_date' class='popup_profile_items'><span create_date="+ askiDetayData.create_date +" id='gardrobe_karistir_date'>"+ convertDate(askiDetayData.create_date) +"</span> tarihinde, <span id='gardrobe_karistir_category' category_id="+ askiDetayData.category_id +">"+ askiDetayData.category_name +"</span> kategorisinde, <span gardrobe_id="+ askiDetayData.gardrobe_id +" id='gardrobe_karistir_gardrobe'>" + askiDetayData.gardrobe_name +"</span> gardrobe'unda paylaşıldı.</div>"+
                    '<div id="popup_aski_place" class="popup_profile_items">Yer: '+ city  + " / " + place +'</div>'+
                    '<div id="popup_aski_description" class="popup_profile_items">'+ askiDetayData.about +'</div>'+

                    '<div id="popup_like_share_comment_count" class="popup_profile_items">' +
                        '<div activate="likes_" class="like_count aski_detail_tabs"><i class="fa fa-heart-o"></i><span class="no_border">'+ likeCount +'</span> Beğeni</div>' +
                        '<div id="aski_comment_tab" activate="comments_" class="comment_count aski_detail_tabs aski_detail_active_tab_item"><i class="fa fa-comment-o"></i><span id="aski_detay_comment">'+ commentCount +'</span>  Yorum</div>' +
                        '<div activate="shares_" class="share_count aski_detail_tabs"><i class="fa fa-share"></i><span class="no_border">'+ shareCount +'</span>  Paylaşım</div>' +
                    '</div>'+

                    '<div id="comments_holder" class="aski_detail_tab_contents">' +

                    '</div> ' +

                    '<div id="likes_holder" class="aski_detail_tab_contents">' +

                    '</div> ' +

                    '<div id="shares_holder" class="aski_detail_tab_contents">' +

                    '</div> '
    }));

    var askiPicturePath = "storage/user_images/";

    if(parseInt(orderNumber) == allFeed.length -1){
        var askiPictureHolder = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"aski_picture_holder"},
            htmlContent:'<i class="fa fa-angle-left" bring="'+ (parseInt(orderNumber) - 1) +'"></i>' +
                            '<div id="aski_picture"><img src="'+ askiPicturePath + askiDetayData.user_id + "/" + askiDetayData.pic_id +'" /></div>'+
                        "<div id='report_aski'>Askı'yı rapor et</div>"
        }));
    }
    else if(parseInt(orderNumber) == 0){
        var askiPictureHolder = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"aski_picture_holder"},
            htmlContent:'<div id="aski_picture"><img src="'+ askiPicturePath + askiDetayData.user_id + "/" + askiDetayData.pic_id +'" /></div>'+
                        '<i class="fa fa-angle-right" bring="'+ (parseInt(orderNumber) + 1) +'"></i>'+
            "<div id='report_aski'>Askı'yı rapor et</div>"
        }));
    }
    else if(orderNumber == ""){
        var askiPictureHolder = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"aski_picture_holder"},
            htmlContent:'<div id="aski_picture"><img src="'+ askiPicturePath + askiDetayData.user_id + "/" + askiDetayData.pic_id +'" /></div>'+
                        "<div id='report_aski'>Askı'yı rapor et</div>"
        }));
    }
    else{
        var askiPictureHolder = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"aski_picture_holder"},
            htmlContent:'<i class="fa fa-angle-left" bring="'+ (parseInt(orderNumber) - 1) +'"></i>' +
                            '<div id="aski_picture"><img src="'+ askiPicturePath + askiDetayData.user_id + "/" + askiDetayData.pic_id +'" /></div>'+
                        '<i class="fa fa-angle-right" bring="'+ (parseInt(orderNumber) + 1) +'"></i>'+
            "<div id='report_aski'>Askı'yı rapor et</div>"
        }));
    }

    var askiSendCommentItems = $(GenerateDomElement({
        nodeType:"div",
        attributes:{"id":"send_comment"},
        htmlContent:'<div id="commentor_profile_picture" class="popup_profile_items">' +
                        '<img src="storage/user_images/avatars/'+ window.user[0].pic_id +'" />'+
                    '</div>'+

                    '<textarea id="aski_comment_textarea" placeholder="Yorumunuzu Girin"></textarea>'+

                    '<button id="send_comment_button" type="submit">Yorum Gönder</button>'+

                    "<div id='tag_friends_button'><i class='fa fa-user'></i></div>"
    }));

    askiContentsHolder.append(askiPictureHolder);

    if(askiDetayData.hadliked == "true"){
        var likeHTML = '<div style="opacity:0.8;" class="buttons like_button" hanger_owner_id="'+ askiDetayData.user_id +'" hanger_id="'+ askiDetayData.hanger_id +'">Beğendin</div>'
    }
    else{
        var likeHTML = '<div class="buttons like_button" hanger_owner_id="'+ askiDetayData.user_id +'" hanger_id="'+ askiDetayData.hanger_id +'"><i class="fa fa-heart-o"></i>Beğen</div>'
    }

    if(askiDetayData.hadshared == "true"){
        var shareHTML = '<div style="opacity:0.8;" class="buttons share_button" hanger_owner_id="'+ askiDetayData.user_id +'" hanger_id="'+ askiDetayData.hanger_id +'">Paylaştın</div>'
    }
    else{
        var shareHTML = '<div class="buttons share_button" hanger_owner_id="'+ askiDetayData.user_id +'" hanger_id="'+ askiDetayData.hanger_id +'"><i class="fa fa-share"></i>Paylaş</div>'
    }

    askiPictureHolder.append(likeHTML);
    askiPictureHolder.append(shareHTML);

    $("#aski_picture_holder").find(".like_button").on("click",function(){
        if($(this).text() != "Beğendin"){
            var likeCount = parseInt($("#glass").find(".like_count span").text());
            $("#glass").find(".like_count span").text(likeCount + 1);
            $(this).text("Beğendin");
            $(this).css({
                opacity:"0.8",
                cursor:"default"
            });
            addLike($(this).attr("hanger_id"),window.user[0].user_id,"3",$(this).attr("hanger_owner_id"));

            var newLike = $(GenerateDomElement({
                nodeType:"div",
                classNames:"my_feed_items",
                htmlContent:'<div class="my_feed_item_content">' +
                            '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ window.user[0].pic_id +'" />'+
                            '<span user_id="'+ window.user[0].user_id +'" class="my_feed_feed_content popup_user_name">'+ window.user[0].name + " " + window.user[0].surname +'</span>'+
                            '<span class="my_feed_feed_content">'+ $("#aski_comment_textarea").val() +'</span>' +
                            '</div>'
            }));

            $("#likes_holder").find(".no_item_span").remove();
            $("#likes_holder").find(".mCSB_container").append(newLike);
            $("#likes_holder").mCustomScrollbar("update");
            $("#likes_holder").mCustomScrollbar("scrollTo","bottom");
        }
        else{
            showStatusPopup("Bu gönderiyi zaten beğenmişsin:(","error","");
        }
    });


    $("#aski_picture_holder").find(".share_button").on("click",function(){
        var shareCount = parseInt($("#glass").find(".share_count span").text());
        $("#glass").find(".share_count span").text(shareCount + 1);
        $(this).text("Paylaştın");
        $(this).css({
            opacity:"0.8"
        });
        showStatusPopup("Beğendiğin askıyı aşağıdaki sosyal ağlardan paylaşabilirsin! :)","share","",$("#glass").find("#aski_picture img").attr("src"));
        addShare($(this).attr("hanger_id"),window.user[0].user_id,$(this).attr("hanger_owner_id"));

        var newShare = $(GenerateDomElement({
            nodeType:"div",
            classNames:"my_feed_items",
            htmlContent:'<div class="my_feed_item_content">' +
                        '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ window.user[0].pic_id +'" />'+
                        '<span user_id="'+ window.user[0].user_id +'" class="my_feed_feed_content popup_user_name">'+ window.user[0].name + " " + window.user[0].surname +'</span>'+
                        '<span class="my_feed_feed_content">'+ $("#aski_comment_textarea").val() +'</span>' +
                        '</div>'
        }));

        $("#shares_holder").find(".no_item_span").remove();
        $("#shares_holder").find(".mCSB_container").append(newShare);
        $("#shares_holder").mCustomScrollbar("update");
        $("#shares_holder").mCustomScrollbar("scrollTo","bottom");
    });

    askiContentsHolder.append(askiProfileItems);

    $("#popup_profile_name, #popup_profile_picture").on("click",function(){
        window.location = "profile_page.php?user_id=" + $(this).attr("user_id");
    });
    $("#gardrobe_karistir_category").on("click",function(){
        window.location="index.php?type=category&type_id="+$(this).attr("category_id");
        //searchResult("category",$(this).attr("category_id"),createMainPageFeed);
        $("#close_popup").trigger("click");
    });

    $("#gardrobe_karistir_date").on("click",function(){
        debugger
        var selectedDate = new Date(parseInt($(this).attr("create_date"))*1000);
        var startDate = new Date();
        var endDate = new Date();
        startDate.setDate(selectedDate.getDate());
        startDate.setMonth(selectedDate.getMonth());
        startDate.setFullYear(selectedDate.getFullYear());
        startDate.setHours(0);
        startDate.setMinutes(0);
        startDate.setSeconds(0);
        endDate.setDate(selectedDate.getDate());
        endDate.setMonth(selectedDate.getMonth());
        endDate.setFullYear(selectedDate.getFullYear());
        endDate.setHours(23);
        endDate.setMinutes(59);
        endDate.setSeconds(59);

        window.location="index.php?type=date&start_date="+startDate.getTime()/1000+"&end_date="+endDate.getTime()/1000;

        //window.location="index.php?type=category&type_id="+$(this).attr("category_id");
        //searchResult("category",$(this).attr("category_id"),createMainPageFeed);
        $("#close_popup").trigger("click");
    });

    $("#gardrobe_karistir_gardrobe").on("click",function(){
        window.location="index.php?gardrobe_id="+$(this).attr("gardrobe_id");
        //searchResult("category",$(this).attr("category_id"),createMainPageFeed);
        $("#close_popup").trigger("click");
    });

    $("#report_aski").on("click",function(){
       // function reportHanger(_hangerId, _userid, _hanger_owner_id,_comment){
        reportHanger(askiDetayData.hanger_id,window.user[0].user_id,askiDetayData.user_id,"uygunsuz resim");
    });



    $("#popup_profile_holder").append(askiSendCommentItems);


    $("#tag_friends_button").on("click",function(){
        showStatusPopup("Lütfen etiketlemek istediğiniz arkadaşlarınızı seçiniz","tagfriends","")
    });

    setFriendsForTagging =function(data){


        for(var i=0; i<data.length; i++){
            if(jQuery.inArray(data[i].user_id, window.taggedFriends)==-1)
            {
                $(".all_friends_holder").append('<div user_id="'+ data[i].user_id +'" class="show_all_items"><div class="show_all_item_content" style="padding-left: 25px; text-align: left; min-height: 40px"><span class="show_all_user">'+ data[i].name + " " + data[i].surname +'</span></div></div>');
            }

        }

        $(".show_all_items").on("click",function(){
            if($(this).hasClass("tagged_friend")){
                $(this).removeClass("tagged_friend");
            }
            else{
                $(this).addClass("tagged_friend");
            }
        })

        $(".all_friends_holder").mCustomScrollbar();
    }

    createTags(askiDetayData.tags);

    function createTags(tagData){
        if(tagData != ""){
            showPreloader();

            $(".tagsContainer").remove();
            try
            {
                var tags = JSON.parse(tagData);
            }
            catch(e)
            {

            }


            $("#aski_picture img").load(function() {
                var picture = askiPictureHolder.find("#aski_picture img");

                if(parseInt(picture.height()) < 600){
                    var marginTop = (-1 * parseInt(picture.height()) / 2) + "px";
                    var marginLeft = (-1 * parseInt(picture.width()) / 2) + "px";

                    picture.css({
                        "position": "absolute",
                        "top": "50%",
                        "left": "50%",
                        "margin-left": marginLeft,
                        "margin-top": marginTop
                    })
                }


                var tagsContainerHeight = parseInt($("#aski_picture img").height());
                var tagsContainerWidth = parseInt($("#aski_picture img").width());
                var tagsContainerMarginLeft = -1 * (parseInt($("#aski_picture img").width()) / 2);
                var tagsContainerMarginTop = -1 * (parseInt($("#aski_picture img").height()) / 2);

                removePreloader();

                var tagsContainer = $(GenerateDomElement({
                    nodeType:"div",
                    classNames: "tagsContainer",
                    attributes:{"style":"position: absolute; left:50%; top:50%; width:"+ tagsContainerWidth +"px; height:"+ tagsContainerHeight  +"px; margin-left:" + tagsContainerMarginLeft + "px; margin-top:"+ tagsContainerMarginTop +"px;"}
                }));

                $("#aski_picture").append(tagsContainer);
                for(var i=0; i<tags.length; i++){
                    if(tags[i].id != 200){
                        var clothTag = $(GenerateDomElement({
                            nodeType:"div",
                            classNames: "photoTag-tag",
                            attributes:{"id": "photoTag-tag_" + tags[i].id, "style":"position: absolute; width:25px; height:25px; left:"+ tags[i].left +"px; top:"+ tags[i].top +"px;"},
                            htmlContent:'<div class="innerTag"><span class="brand_search_from_tag">'+ tags[i].brand +"</span> "+ tags[i].text +'</div>'
                        }));
                        tagsContainer.append(clothTag);
                    }
                }

                $(".brand_search_from_tag").on("click",function(){
                    window.location="index.php?type=brand&type_id="+$(this).text();
                });
            });
        }
    }

    $.urlParam = function(name){
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results==null){
            return null;
        }
        else{
            return results[1] || 0;
        }
    }
    var type = decodeURIComponent($.urlParam('type'));
    var type_id =decodeURIComponent($.urlParam('type_id'));
    if(type_id!="null" || type!="null")
    {
        $(".fa-angle-right").remove();
        $(".fa-angle-left").remove();
    }

    if(_hasArrowButtons == false){
        $(".fa-angle-right").remove();
        $(".fa-angle-left").remove();
    }

    $("#send_comment_button").on("click",function(){
        if($.trim($("#aski_comment_textarea").val()) != ""){
            sendComment(askiDetayData.hanger_id, askiDetayData.user_id, $("#aski_comment_textarea").val(), window.user[0].user_id, askiDetayData.user_id);
            if(window.taggedFriends.length>0)
            {
                sendMentionedFriends(askiDetayData.hanger_id, $("#aski_comment_textarea").val(), window.user[0].user_id,window.taggedFriendsList);
            }

            window.taggedFriendsList="";
            window.taggedFriends= new Array();
        }
        else{
            showStatusPopup("Lütfen bir yorum gir!","error","")
        }
    });

    setNewComment = function(newCommentData){
        if(newCommentData == true){
            var newComment = $(GenerateDomElement({
                nodeType:"div",
                classNames:"my_feed_items",
                htmlContent:'<div class="my_feed_item_content">' +
                                '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ window.user[0].pic_id +'" />'+
                                '<span user_id="'+ window.user[0].user_id +'" class="my_feed_feed_content popup_user_name">'+ window.user[0].name + " " + window.user[0].surname +'</span>'+
                                '<span class="my_feed_feed_content">'+ $("#aski_comment_textarea").val() +'</span>' +
                            '</div>'
            }));

            $("#comments_holder").find(".no_item_span").remove();
            $("#aski_detay_comment").text(parseInt($("#aski_detay_comment").text()) + 1);
            $("#comments_holder").find(".mCSB_container").append(newComment);
            $("#comments_holder").mCustomScrollbar("update");
            $("#aski_comment_textarea").val("");
            $("#comments_holder").mCustomScrollbar("scrollTo","bottom");
        }
    }

    $("#send_comment").on("click",function(){
        $("#aski_comment_tab").trigger("click");
    });

    if(commentCount == 0){
        $("#comments_holder").append('<span class="no_item_span">Henüz bu askıya yorum yapılmamış</span>')
    }
    if(likeCount == 0){
        $("#likes_holder").append('<span class="no_item_span">Henüz bu askıya beğeni verilmemiş</span>')
    }
    if(shareCount == 0){
        $("#shares_holder").append('<span class="no_item_span">Henüz bu askıya hiç paylaşılmamış</span>')
    }

    for(var i=0;i<commentCount;i++){
        var commentItem = $(GenerateDomElement({
            nodeType:"div",
            classNames:"my_feed_items",
            htmlContent:'<div class="my_feed_item_content">' +
                            '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ askiDetayData.comments[i].pic_id +'" />'+
                            '<span user_id="'+ askiDetayData.comments[i].user_id +'" class="my_feed_feed_content popup_user_name">'+ askiDetayData.comments[i].liker_name +'</span>'+
                            '<span class="my_feed_feed_content">'+ askiDetayData.comments[i].comment +'</span>' +
                        '</div>'
        }));

        $("#comments_holder").append(commentItem);
        commentItem.find(".popup_user_name").on("click",function(){
            window.location = "profile_page.php?user_id=" + $(this).attr("user_id");
        });
    }

    for(var i=0;i<likeCount;i++){
        var likeItem = $(GenerateDomElement({
            nodeType:"div",
            classNames:"my_feed_items",
            htmlContent:'<div user_id="'+ askiDetayData.likes[i].user_id +'" class="my_feed_item_content">' +
                            '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ askiDetayData.likes[i].pic_id +'" />'+
                            '<span class="my_feed_feed_content">'+ askiDetayData.likes[i].liker_name +'</span>' +
                        '</div>'
        }));

        $("#likes_holder").append(likeItem);
        likeItem.find(".my_feed_item_content").on("click",function(){
            window.location = "profile_page.php?user_id=" + $(this).attr("user_id");
        });
    }

    for(var i=0;i<shareCount;i++){
        var shareItem = $(GenerateDomElement({
            nodeType:"div",
            classNames:"my_feed_items",
            htmlContent:'<div user_id="'+ askiDetayData.shares[i].user_id +'" class="my_feed_item_content">' +
                            '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ askiDetayData.shares[i].pic_id +'" />'+
                            '<span class="my_feed_feed_content">'+ askiDetayData.shares[i].liker_name +'</span>' +
                        '</div>'
        }));

        $("#shares_holder").append(shareItem);
        shareItem.find(".my_feed_item_content").on("click",function(){
            window.location = "profile_page.php?user_id=" + $(this).attr("user_id");
        });
    }

    $("#comments_holder, #likes_holder, #shares_holder").mCustomScrollbar();

    $(".aski_detail_tabs").on("click",function(){
        if(!$(this).hasClass("aski_detail_active_tab_item")){
            $(".aski_detail_tabs").removeClass("aski_detail_active_tab_item");
            $(this).addClass("aski_detail_active_tab_item");

            $(".aski_detail_tab_contents ").css("display","none");
            $("#" + $(this).attr("activate") + "holder").css("display","block");
            $("#" + $(this).attr("activate") + "holder").mCustomScrollbar("update")
        }
    });

    $("#close_popup").on("click",function(){
        $("#glass_inner").removeClass("bounceInLeft animated");
        $("#glass_inner").addClass("bounceOutRight animated");
        setTimeout(function(){
            $("#glass, #glass_inner").remove();
        },400);
        //mention için eklenmiş user varsa siler
        window.taggedFriendsList="";
        window.taggedFriends= new Array();
        showPreloader();


        if($(".active_selector_span").html() == "Takip Ettiklerim"){
            if($(".active_selector_span:visible").length>0){
                $(".feed_item").remove();
                getMainPageFeed("fellowed",createMainPageFeed);
            }
            else{
                removePreloader()
            }
        }
        else{
            if($(".active_selector_span:visible").length>0){
                $(".feed_item").remove();
                getMainPageFeed("all",createMainPageFeed);
            }
            else{
                removePreloader()
            }
        }
    });

    updateFeed = function(feedData){
        allFeed = feedData;
    }

    $(".fa-angle-left").on("click", function(){
        askiDetay.remove();
        updateComments();
        showPopup(allFeed[$(this).attr("bring")], allFeed, $(this).attr("bring"), false);
    });

    $(".fa-angle-right").on("click", function(){
        askiDetay.remove();
        updateComments();
        showPopup(allFeed[$(this).attr("bring")], allFeed, $(this).attr("bring"), false);
    });
}
