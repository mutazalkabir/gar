/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 16:48
 * To change this template use File | Settings | File Templates.
 */

setMyFeed = function(myFeedData){
    if(myFeedData.length == 0){
        $("#my_feed").append('<span id="my_feed_no_followers">Henüz Takip Ettiğin Kimse yok :(</span>')
    }
    else{
        myFeedContainer = $("#my_feed");
        $("#my_feed_no_followers").remove();

        for(var i=0; i<myFeedData.length; i++){
            if(myFeedData[i].feed_type == "fellowship"){
                var myFeedItem = $(GenerateDomElement({
                    nodeType:"div",
                    classNames:"my_feed_items",
                    attributes:{feed_type: "friendship", user_id: myFeedData[i].user_two_id},
                    htmlContent:'<div class="my_feed_items">'+
                        '<div class="my_feed_item_content">'+
                        '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ myFeedData[i].user_one_pic +'">'+
                        '<span class="my_feed_feed_content"><span class="feed_user">'+ myFeedData[i].user_one +'</span> ve <span class="feed_user">'+ myFeedData[i].user_two  +'</span> artık arkadaşlar!</span>'+
                        '</div>'+
                        '</div>'
                }));
            }
            else if(myFeedData[i].feed_type == "like"){
                var myFeedItem = $(GenerateDomElement({
                    nodeType:"div",
                    classNames:"my_feed_items",
                    attributes:{feed_type: "like", hanger_id: myFeedData[i].hanger_id },
                    htmlContent:'<div class="my_feed_items">'+
                        '<div class="my_feed_item_content">'+
                        '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ myFeedData[i].user_one_pic +'">'+
                        '<span class="my_feed_feed_content"><span class="feed_user">'+ myFeedData[i].user_one +'</span>, <span class="feed_user">'+ myFeedData[i].user_two  +'</span>ın askısını beğendi!</span>'+
                        '</div>'+
                        '</div>'
                }));
            }
            else if(myFeedData[i].feed_type == "comment"){
                var myFeedItem = $(GenerateDomElement({
                    nodeType:"div",
                    classNames:"my_feed_items",
                    attributes:{feed_type: "comment", hanger_id: myFeedData[i].hanger_id },
                    htmlContent:'<div class="my_feed_items">'+
                        '<div class="my_feed_item_content">'+
                        '<img class="my_feed_profile_picture" src="storage/user_images/avatars/'+ myFeedData[i].user_one_pic +'" />'+
                        '<span class="my_feed_feed_content"><span class="feed_user">'+ myFeedData[i].user_one +'</span>, <span class="feed_user">'+ myFeedData[i].user_two  +'</span>ın askısına yorum yaptı!</span>'+
                        '</div>'+
                        '</div>'
                }));
            }
            else{
                var myFeedItem = $(GenerateDomElement({
                    nodeType:"div",
                    classNames:"my_feed_items",
                    attributes:{feed_type: "share", hanger_id: myFeedData[i].hanger_id },
                    htmlContent:'<div class="my_feed_items">'+
                        '<div class="my_feed_item_content">'+
                        '<img class="my_feed_profile_picture"  src="storage/user_images/avatars/'+ myFeedData[i].user_one_pic +'">'+
                        '<span class="my_feed_feed_content"><span class="feed_user">'+ myFeedData[i].user_one +'</span> ve <span class="feed_user">'+ myFeedData[i].user_two  +'</span>ın askısını paylaştı!</span>'+
                        '</div>'+
                        '</div>'
                }));
            }

            myFeedContainer.append(myFeedItem);

            myFeedItem.on("click",function(){
               if($(this).attr("feed_type") == "friendship"){
                    window.location = "profile_page.php?user_id="+$(this).attr("user_id");
               }
               else{
                   showPopup("",mainPageFeedData, "", true);
               }
            });
        }
        $("#my_feed").mCustomScrollbar();
    }
}
