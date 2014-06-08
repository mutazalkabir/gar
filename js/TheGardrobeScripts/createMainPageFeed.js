/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 16:47
 * To change this template use File | Settings | File Templates.
 */

createMainPageFeed = function(mainPageFeedData){
    $.urlParam = function(name){
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results==null){
            return null;
        }
        else{
            return results[1] || 0;
        }
    }

    if(mainPageFeedData.length == 0){
        if($("#no_search_result").length == 0){
            $("body").append('<span id="no_search_result">Arama Kriterlerinize Uyan Askı Bulunamadı</span>');
        }
    }
    else{
        $("#no_search_result").remove();
    }

    $(".feed_item").remove();
    removePreloader();
    $("#all_or_followers_only_selector span").off("click");

    $("#all_or_followers_only_selector span").on("click",function(){
        showPreloader();
        $("#all_or_followers_only_selector span").removeClass("active_selector_span");

        if($(this).html() == "Herkes"){
            getMainPageFeed("all", createMainPageFeed);
        }
        else{
            getMainPageFeed("fellowed", createMainPageFeed);
        }

        if(!$(this).hasClass("active_selector_span")){
            $(this).addClass("active_selector_span");
        }
    });

    mainPageFeedContainer = $("#page_contents");
    for(var i=0; i<mainPageFeedData.length; i++){
        var askiPicturePath = "storage/user_images/";

        if(mainPageFeedData[i].comments != undefined){
            var commentCount = mainPageFeedData[i].comments.length;
        }
        else{
            var commentCount = 0;
        }

        if(mainPageFeedData[i].shares != undefined){
            var shareCount = mainPageFeedData[i].shares.length;
        }
        else{
            var shareCount = 0;
        }

        if(mainPageFeedData[i].likes != undefined){
            var likeCount = mainPageFeedData[i].likes.length;
        }
        else{
            var likeCount = 0;
        }

        if(mainPageFeedData[i].hadliked == "true"){
            var likeHTML = '<div style="opacity:0.8; cursor:default" class="buttons like_button" hanger_owner_id="'+ mainPageFeedData[i].user_id +'" hanger_id="'+ mainPageFeedData[i].hanger_id +'">Beğendin</div>'
        }
        else{
            var likeHTML = '<div class="buttons like_button" hanger_owner_id="'+ mainPageFeedData[i].user_id +'" hanger_id="'+ mainPageFeedData[i].hanger_id +'"><i class="fa fa-heart-o"></i>Beğen</div>'
        }

        if(mainPageFeedData[i].hadshared == "true"){
            var shareHTML = '<div style="opacity:0.8; cursor:default" class="buttons share_button">Paylaştın</div>'
        }
        else{
            var shareHTML = '<div class="buttons share_button"><i class="fa fa-share"></i>Paylaş</div>'
        }

        var mainPageFeedItem = $(GenerateDomElement({
            nodeType:"div",
            classNames:"feed_item",
            attributes:{"following":"true", "order_number":i, "hanger_id": mainPageFeedData[i].hanger_id, "hanger_owner_id": mainPageFeedData[i].user_id},
            htmlContent:'<span class="cloth_cover">' +
                            likeHTML +
                            '<div class="buttons comment_button"><i class="fa fa-comment-o"></i>Yorum Yap</div>' +
                            shareHTML +
                        '</span>' +
                        '<div class="cloth_photo">' +
                            '<span user_id="'+mainPageFeedData[i].user_id+'" class="aski_owner_name">'+ mainPageFeedData[i].name + " " + mainPageFeedData[i].surname +'</span>'+
                            '<img src="'+ askiPicturePath + mainPageFeedData[i].user_id + "/" + mainPageFeedData[i].pic_id +'">' +
                        '</div>' +

                        '<div class="profile_photo">'+
                            '<img user_id="'+mainPageFeedData[i].user_id+'" class="main_page_feed_profile_image" src="storage/user_images/avatars/'+ mainPageFeedData[i].avatar+'">'+
                        ' </div>'+

                        '<span class="tag_name feed_item_span">'+ mainPageFeedData[i].category_name +'</span>'+
                        '<span class="description feed_item_span">'+ mainPageFeedData[i].about +'</span>'+

                        '<div class="like_comment_share_holder">'+
                            '<div class="like_count"><i class="fa fa-heart-o"></i><span class="main_page_feed_like_count">'+ likeCount +'</span> Beğeni</div>'+
                            '<div class="comment_count"><i class="fa fa-comment-o"></i>'+ commentCount +' Yorum</div>'+
                            '<div class="share_count"><i class="fa fa-share"></i><span class="main_page_feed_share_count">'+ shareCount +'</span> Paylaşım</div>'+
                        '</div>'
        }));

        mainPageFeedContainer.append(mainPageFeedItem);

        mainPageFeedItem.on("click",function(e){
            if(e.target.className == "buttons like_button"){
                e.preventDefault();
                e.stopImmediatePropagation();
                if($(this).find(".like_button").text() != "Beğendin"){
                    var likeCount = parseInt($(this).find(".main_page_feed_like_count").text());
                    $(this).find(".main_page_feed_like_count").text(likeCount + 1);
                    $(this).find(".like_button").text("Beğendin");
                    $(this).find(".like_button").css({
                        opacity:"0.8",
                        cursor:"default"
                    });
                    addLike($(this).attr("hanger_id"),window.user[0].user_id,"3",$(this).attr("hanger_owner_id"));
                }
                else{
                    showStatusPopup("Bu gönderiyi zaten beğenmişsin:(","error","");
                }
            }
            else if(e.target.className == "buttons share_button"){
                e.preventDefault();
                e.stopImmediatePropagation();
                if($(this).find(".share_button").text() == "Paylaştın"){
                    var shareCount = parseInt($(this).find(".main_page_feed_share_count").text());
                    $(this).find(".main_page_feed_share_count").text(shareCount + 1);
                    $(this).find(".share_button").text("Paylaştın");
                    $(this).find(".share_button").css({
                        opacity:"0.8"
                    });
                    showStatusPopup("Beğendiğin askıyı aşağıdaki sosyal ağlardan paylaşabilirsin! :)","share","",$(this).find(".cloth_photo img").attr("src"));
                    addShare($(this).attr("hanger_id"),window.user[0].user_id,$(this).attr("hanger_owner_id"));
                }
                else{
                    showStatusPopup("Bu gönderiyi zaten paylaşmışsın:(","error","");
                }
            }
            else if(e.target.className == "main_page_feed_profile_image"){
                e.preventDefault();
                e.stopImmediatePropagation();
                window.location = "profile_page.php?user_id="+$(this).find(".main_page_feed_profile_image").attr("user_id");
            }
            else if(e.target.className == "aski_owner_name"){
                e.preventDefault();
                e.stopImmediatePropagation();
                window.location = "profile_page.php?user_id="+$(this).find(".main_page_feed_profile_image").attr("user_id");
            }
            else if(e.target.className == "tag_name feed_item_span"){
                e.preventDefault();
                e.stopImmediatePropagation();
            }
            else{
                var gardrobe_id = decodeURIComponent($.urlParam('gardrobe_id'));
                if(gardrobe_id!="null")
                {
                    showPopup(mainPageFeedData[$(this).attr("order_number")],mainPageFeedData, $(this).attr("order_number"), true, false);
                }
                else
                {
                    showPopup(mainPageFeedData[$(this).attr("order_number")],mainPageFeedData, $(this).attr("order_number"), true, true);
                }
            }
        });
    }
}

