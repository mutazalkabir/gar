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
            attributes:{"following":"true", "order_number":i, "hanger_id": mainPageFeedData[i].hanger_id},
            htmlContent:'<span class="cloth_cover">' +
                            '<div class="buttons like_button"><i class="fa fa-heart-o"></i>Beğen</div>' +
                            '<div class="buttons comment_button"><i class="fa fa-comment-o"></i>Yorum Yap</div>' +
                            '<div class="buttons share_button"><i class="fa fa-share"></i>Paylaş</div>' +
                        '</span>' +
                        '<div class="cloth_photo">' +
                            '<span class="aski_owner_name">'+ mainPageFeedData[i].name + " " + mainPageFeedData[i].surname +'</span>'+
                            '<img src="images/dummy_images/kiyafet.jpg">' +
                        '</div>' +

                        '<div class="profile_photo">'+
                            '<img src="images/dummy_images/profil.jpg">'+
                        ' </div>'+

                        '<span class="tag_name feed_item_span">'+ mainPageFeedData[i].category_name +'</span>'+
                        '<span class="description feed_item_span">'+ mainPageFeedData[i].about +'</span>'+

                        '<div class="like_comment_share_holder">'+
                            '<div class="like_count"><i class="fa fa-heart-o"></i>'+ likeCount +' Beğeni</div>'+
                            '<div class="comment_count"><i class="fa fa-comment-o"></i>'+ commentCount +' Yorum</div>'+
                            '<div class="share_count"><i class="fa fa-share"></i>'+ shareCount +' Paylaşım</div>'+
                        '</div>'
        }));

        mainPageFeedContainer.append(mainPageFeedItem);

        mainPageFeedItem.on("click",function(e){
            if(e.target.className == "buttons like_button"){
                e.preventDefault();
                e.stopImmediatePropagation();
                addLike($(this).attr("hanger_id"),window.user[0].user_id,"3","4");
            }
            else if(e.target.className == "buttons share_button"){
                e.preventDefault();
                e.stopImmediatePropagation();
                addShare();
            }
            else{
                showPopup(mainPageFeedData[$(this).attr("order_number")],mainPageFeedData, $(this).attr("order_number"), true);
            }
        });
    }
}

