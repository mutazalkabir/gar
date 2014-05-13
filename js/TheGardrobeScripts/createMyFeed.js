/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 16:48
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){
    createMyFeed = function(){
        myFeedContainer = $("#my_feed");

        for(var i=0; i<20; i++){
            var myFeedItem =
                    '<div class="my_feed_items">'+
                        '<div class="my_feed_item_content">'+
                            '<img class="my_feed_profile_picture" src="images/dummy_images/profil.jpg">'+
                            '<span class="my_feed_feed_content"><span class="feed_user">Tunç Akın</span> and Diğer Tunç Akın are now friends.</span>'+
                        '</div>'+
                    '</div>'

            myFeedContainer.append(myFeedItem);
        }
        $("#my_feed").mCustomScrollbar();
    }
});