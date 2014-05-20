/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 16:47
 * To change this template use File | Settings | File Templates.
 */

createMainPageFeed = function(mainPageFeedData){
    $("#all_or_followers_only_selector span").on("click",function(){
        if($(this).html() == "Herkes"){
            $("#page_contents").addClass("show_everybody");
        }
        else{
            $("#page_contents").removeClass("show_everybody");
        }

        if($(this).hasClass("active_selector_span")){
            $(".feed_item[following='true']").css("display","inline-block");
        }
        else{
            $("#all_or_followers_only_selector span").removeClass("active_selector_span");
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

        var mainPageFeedItem = $(GenerateDomElement({
            nodeType:"div",
            classNames:"feed_item",
            attributes:{"following":"true", "order_number":i, "hanger_id": mainPageFeedData[i].hanger_id, "hanger_owner_id": mainPageFeedData[i].user_id},
            htmlContent:'<span class="cloth_cover">' +
                            '<div class="buttons like_button" hanger_owner_id="'+ mainPageFeedData[i].user_id +'" hanger_id="'+ mainPageFeedData[i].hanger_id +'"><i class="fa fa-heart-o"></i>Beğen</div>' +
                            '<div class="buttons comment_button"><i class="fa fa-comment-o"></i>Yorum Yap</div>' +
                            '<div class="buttons share_button"><i class="fa fa-share"></i>Paylaş</div>' +
                        '</span>' +
                        '<div class="cloth_photo">' +
                            '<span class="aski_owner_name">'+ mainPageFeedData[i].name + " " + mainPageFeedData[i].surname +'</span>'+
                            '<img src="'+ askiPicturePath + mainPageFeedData[i].user_id + "/" + mainPageFeedData[i].pic_id +'.png">' +
                        '</div>' +

                        '<div class="profile_photo">'+
                            '<img class="main_page_feed_profile_image" src="images/dummy_images/profil.jpg">'+
                        ' </div>'+

                        '<span class="tag_name feed_item_span">'+ mainPageFeedData[i].category_name +'</span>'+
                        '<span class="description feed_item_span">'+ mainPageFeedData[i].about +'</span>'+

                        '<div class="like_comment_share_holder">'+
                            '<div class="like_count"><i class="fa fa-heart-o"></i><span class="main_page_feed_like_count">'+ likeCount +'</span> Beğeni</div>'+
                            '<div class="comment_count"><i class="fa fa-comment-o"></i>'+ commentCount +' Yorum</div>'+
                            '<div class="share_count"><i class="fa fa-share"></i>'+ shareCount +' Paylaşım</div>'+
                        '</div>'
        }));

        mainPageFeedContainer.append(mainPageFeedItem);

        mainPageFeedItem.on("click",function(e){
            if(e.target.className == "buttons like_button"){
                e.preventDefault();
                e.stopImmediatePropagation();

                var likeCount = parseInt($(this).find(".main_page_feed_like_count").text());
                $(this).find(".main_page_feed_like_count").text(likeCount + 1);
                $(this).find(".like_button").text("Beğendin");
                $(this).find(".like_button").css({
                    opacity:"0.8",
                    cursor:"default"
                });
                $(this).find(".like_button").attr('onclick','').unbind('click');
                addLike($(this).attr("hanger_id"),window.user[0].user_id,"3",$(this).attr("hanger_owner_id"));

            }
            else if(e.target.className == "buttons share_button"){
                e.preventDefault();
                e.stopImmediatePropagation();
                addShare($(this).attr("hanger_id"),window.user[0].user_id,$(this).attr("hanger_owner_id"));
            }
            else if(e.target.className == "main_page_feed_profile_image"){
                e.preventDefault();
                e.stopImmediatePropagation();
            }
            else if(e.target.className == "tag_name feed_item_span"){
                e.preventDefault();
                e.stopImmediatePropagation();
            }
            else{
                showPopup(mainPageFeedData[$(this).attr("order_number")],mainPageFeedData, $(this).attr("order_number"), true);
            }
        });

        setNewLike = function(data){
            if(data == true){
                updateLikeCount();
            }
        }

        setNewShare = function(data){
            if(data == true){

            }
        }

        updateLikeCount = function(){

        }
    }
}

