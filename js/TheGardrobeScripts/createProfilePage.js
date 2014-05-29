/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 26.05.2014
 * Time: 12:04
 * To change this template use File | Settings | File Templates.
 */



setGardrobesForProfilePage = function(gardrobeData){
    var gardrobesContainer = $("#profile_page_gardrobes");

    for(var i=0; i<gardrobeData.length; i++){
        var gardrobes = $(GenerateDomElement({
            nodeType:"div",
            classNames: "feed_item profile_feed_item",
            attributes:{"gardrobe_id": gardrobeData[i].gardrobe_id},
            htmlContent:'<span class="cloth_cover gardrobe"></span>'+
                        '<div class="cloth_photo gardrobe">'+
                            '<img src="images/dummy_images/kiyafet.jpg" />'+
                            '<img src="images/dummy_images/kiyafet.jpg" />'+
                            '<img src="images/dummy_images/kiyafet.jpg" />'+
                            '<img src="images/dummy_images/kiyafet.jpg" />'+
                        ' </div>'+
                        '<div class="profile_photo">'+
                            '<img src="images/dummy_images/profil.jpg">'+
                        '</div>'+
                        '<span class="tag_name feed_item_span">Spor Kıyafetler</span>'+
                        '<span class="gardrobe_name feed_item_span">'+ gardrobeData[i].gardrobe_name +'</span>'+
                        '<div class="like_comment_share_holder">'+
                            '<div class="gardrobe_item_aski_count"><i class="flaticon-clothing1"></i>45 Askı</div>'+
                        '</div>'
        }));
    gardrobesContainer.append(gardrobes);
    }

    getFollowers(decodeURIComponent($.urlParam('user_id')), setFellowers);
    getFollowing(window.user[0].user_id, setFollowing);


/*    $("#following_mcustomscrollbar").mCustomScrollbar();
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
    });*/
}

setFellowers = function(data){
    for(var i=0; i<data.length; i++){
        var followersContainer = $("#following_mcustomscrollbar");
        var follower = $(GenerateDomElement({
            nodeType:"div",
            classNames: "feed_item follower_profile_holder",
            htmlContent:'<div class="follower_profile_picture_holder"> '+
                                '<img src="images/dummy_images/profil.jpg" />'+
                            '</div>'+
                        '<span class="follower_profile_name_holder">Tunç</span>'
        }));
        followersContainer.append(follower);
    }
}

setFollowing = function(data){
    debugger
    for(var i=0; i<data.length; i++){
        var followersContainer = $("#following_mcustomscrollbar");
        var follower = $(GenerateDomElement({
            nodeType:"div",
            classNames: "feed_item follower_profile_holder",
            htmlContent:'<div class="follower_profile_picture_holder"> '+
                '<img src="images/dummy_images/profil.jpg" />'+
                '</div>'+
                '<span class="follower_profile_name_holder">Tunç</span>'
        }));
        followersContainer.append(follower);
    }
}