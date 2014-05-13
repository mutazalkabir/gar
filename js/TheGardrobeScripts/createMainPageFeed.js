/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 16:47
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){
    createMainPageFeed = function(){

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

        for(var i=0; i<5; i++){
            var mainPageFollowingFeedItem =
                '<div class="feed_item" following="true">' +
                    '<i class="fa fa-check following_sign" title="Takip Ediyorsun"></i> ' +
                    '<span class="cloth_cover">' +
                        '<div class="buttons like_button"><i class="fa fa-heart-o"></i>Beğen</div>' +
                        '<div class="buttons comment_button"><i class="fa fa-comment-o"></i>Yorum Yap</div>' +
                        '<div class="buttons share_button"><i class="fa fa-share"></i>Paylaş</div>' +
                    '</span>'+
                    '<div class="cloth_photo">' +
                        '<span class="aski_owner_name">Tunç Akın</span>'+
                        '<img src="images/dummy_images/kiyafet.jpg">' +
                    '</div>'+
                    '<div class="profile_photo">'+
                        '<img src="images/dummy_images/profil.jpg">'+
                    ' </div>'+

                    '<span class="tag_name feed_item_span">Spor Kıyafetler</span>'+
                    '<span class="description feed_item_span">Spora giderken ne giyeceğim demekten bıkmışken, deneme 1-2 çok güzel bir yazı bu evet aynen öyle!</span>'+

                    '<div class="like_comment_share_holder">'+
                        '<div class="like_count"><i class="fa fa-heart-o"></i>45 Beğeni</div>'+
                        '<div class="comment_count"><i class="fa fa-comment-o"></i>10 Yorum</div>'+
                        '<div class="share_count"><i class="fa fa-share"></i>6 Paylaşım</div>'+
                    '</div>'+
                '</div>'

            var mainPageNotFollowingFeedItem =
                '<div class="feed_item" following="false">' +
                    '<span class="cloth_cover">' +
                        '<div class="buttons like_button"><i class="fa fa-heart-o"></i>Beğen</div>' +
                        '<div class="buttons comment_button"><i class="fa fa-comment-o"></i>Yorum Yap</div>' +
                        '<div class="buttons share_button"><i class="fa fa-share"></i>Paylaş</div>' +
                    '</span>'+
                    '<div class="cloth_photo">' +
                        '<span class="aski_owner_name">Tunç Akın</span>'+
                        '<img src="images/dummy_images/kiyafet.jpg">' +
                    '</div>'+
                    '<div class="profile_photo">'+
                        '<img src="images/dummy_images/profil.jpg">'+
                    ' </div>'+

                    '<span class="tag_name feed_item_span">Spor Kıyafetler</span>'+
                    '<span class="description feed_item_span">Spora giderken ne giyeceğim demekten bıkmışken, deneme 1-2 çok güzel bir yazı bu evet aynen öyle!</span>'+

                    '<div class="like_comment_share_holder">'+
                        '<div class="like_count"><i class="fa fa-heart-o"></i>45 Beğeni</div>'+
                        '<div class="comment_count"><i class="fa fa-comment-o"></i>10 Yorum</div>'+
                        '<div class="share_count"><i class="fa fa-share"></i>6 Paylaşım</div>'+
                    '</div>'+
                '</div>'                

            mainPageFeedContainer.append(mainPageNotFollowingFeedItem);
            mainPageFeedContainer.append(mainPageFollowingFeedItem);
        }
    }
});

