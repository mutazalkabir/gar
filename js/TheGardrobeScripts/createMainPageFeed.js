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
                $(this).removeClass("active_selector_span");
                $(".feed_item").attr("following","true").css("display","inline-block");

            }
            else{
                $("#all_or_followers_only_selector span").removeClass("active_selector_span");
                $(this).addClass("active_selector_span");
            }
        });

        mainPageFeedContainer = $("#page_contents");
        for(var i=0; i<mainPageFeedData.length; i++){
            var mainPageFeedItem = $(GenerateDomElement({
                nodeType:"div",
                classNames:"feed_item",
                attributes:{"following":"true"},
                htmlContent:'<i class="fa fa-check following_sign" title="Takip Ediyorsun"></i> ' +
                            '<span class="cloth_cover">' +
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
                                '<div class="like_count"><i class="fa fa-heart-o"></i>'+ mainPageFeedData[i].likes.length +' Beğeni</div>'+
                                '<div class="comment_count"><i class="fa fa-comment-o"></i>'+ mainPageFeedData[i].comments.length +' Yorum</div>'+
                                '<div class="share_count"><i class="fa fa-share"></i>'+ mainPageFeedData[i].shares.length +' Paylaşım</div>'+
                            '</div>'
            }));
            mainPageFeedContainer.append(mainPageFeedItem);

            mainPageFeedItem.on("click",function(){
                showPopup(mainPageFeedData[i], i);
            });
        }
    }

