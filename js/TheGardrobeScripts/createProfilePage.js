/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 26.05.2014
 * Time: 12:04
 * To change this template use File | Settings | File Templates.
 */



setGardrobesForProfilePage = function(gardrobeData){
    getUser(decodeURIComponent($.urlParam('user_id')), setUserData)

    var gardrobesContainer = $("#profile_page_gardrobes");
    var askiPicturePath = "storage/user_images/";
    debugger
if(gardrobeData.length>0){
    for(var i=0; i<gardrobeData.length; i++){
        if(gardrobeData[i].hangers[0] == undefined){
            var userId = decodeURIComponent($.urlParam('user_id'));
            var picId = "dummyaski.jpg";
        }
        else{
            var userId = gardrobeData[i].hangers[0].user_id;
            var picId = gardrobeData[i].hangers[0].pic_id;
        }

        if(gardrobeData[i].hangers[1] == undefined){
            var userId = decodeURIComponent($.urlParam('user_id'));
            var picId1 = "dummyaski.jpg";
        }
        else{
            var userId = gardrobeData[i].hangers[1].user_id;
            var picId1 = gardrobeData[i].hangers[1].pic_id;
        }

        if(gardrobeData[i].hangers[2] == undefined){
            var userId = decodeURIComponent($.urlParam('user_id'));
            var picId2 = "dummyaski.jpg";
        }
        else{
            var userId = gardrobeData[i].hangers[2].user_id;
            var picId2 = gardrobeData[i].hangers[2].pic_id;
        }

        if(gardrobeData[i].hangers[3] == undefined){
            var userId = decodeURIComponent($.urlParam('user_id'));
            var picId3 = "dummyaski.jpg";
        }
        else{
            var userId = gardrobeData[i].hangers[3].user_id;
            var picId3 = gardrobeData[i].hangers[3].pic_id;
        }

        var gardrobes = $(GenerateDomElement({
            nodeType:"div",
            classNames: "feed_item profile_feed_item",
            attributes:{"gardrobe_id": gardrobeData[i].gardrobe_id},
            htmlContent:'<span class="cloth_cover gardrobe"></span>'+
                        '<div class="cloth_photo gardrobe">'+
                            '<div class="gardrobe_preview_container"><img src="'+ askiPicturePath + userId + "/" + picId +'" /></div>'+
                            '<div class="gardrobe_preview_container"><img src="'+ askiPicturePath + userId + "/" + picId1 +'" /></div>'+
                            '<div class="gardrobe_preview_container"><img src="'+ askiPicturePath + userId + "/" + picId2 +'" /></div>'+
                            '<div class="gardrobe_preview_container"><img src="'+ askiPicturePath + userId + "/" + picId3 +'" /></div>'+
                        ' </div>'+
                        '<div class="profile_photo">'+
                            '<img user_id="'+gardrobeData[i].user_id+'" class="main_page_feed_profile_image" src="storage/user_images/avatars/'+ gardrobeData[i].avatar+'">'+
                            '<img src="images/dummy_images/profil.jpg">'+
                        '</div>'+
                        '<span class="gardrobe_name feed_item_span">'+ gardrobeData[i].gardrobe_name +'</span>'+
                        '<div class="like_comment_share_holder">'+
                            '<div class="gardrobe_item_aski_count"><i class="flaticon-clothing1"></i>'+ gardrobeData[i].hangers.length +' Askı</div>'+
                        '</div>'
        }));
    gardrobesContainer.append(gardrobes);
    }
}

    getFollowers(decodeURIComponent($.urlParam('user_id')), setFellowers);
    getFollowing(window.user[0].user_id, setFollowing);
}

setFellowers = function(data){
    $("#follower_count").text(data.length);
    var followersContainer = $("#following_mcustomscrollbar");
    if(data.length == 0){
        followersContainer.append('<span class="no_follower_or_following_text">Henüz takip ettiğin kimse yok :(</span>')
    }
    else{
        for(var i=0; i<data.length; i++){
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

        $("#following_mcustomscrollbar").mCustomScrollbar();

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
        });
    }
}

setFollowing = function(data){
    $("#following_count").text(data.length);
    var followersContainer = $("#followers_mcustomscrollbar");
    if(data.length == 0){
        followersContainer.append('<span class="no_follower_or_following_text">Henüz seni takip eden kimse yok :(</span>')
    }
    else{
        for(var i=0; i<data.length; i++){
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
        });
    }
}

setUserData = function(data){

}