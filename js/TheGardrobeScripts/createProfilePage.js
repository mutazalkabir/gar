/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 26.05.2014
 * Time: 12:04
 * To change this template use File | Settings | File Templates.
 */



setGardrobesForProfilePage = function(gardrobeData){
    if(decodeURIComponent($.urlParam('user_id')) == window.user[0].user_id){
        $(".profile_buttons").remove();
    }

    $("#total_gardrobe_count").text(gardrobeData.length + " Gardrobe");
    $("#total_hanger_count").text(gardrobeData[0].hanger_count + " Askı");

    getUser(decodeURIComponent($.urlParam('user_id')), setUserData);

    var gardrobesContainer = $("#profile_page_gardrobes");
    var askiPicturePath = "storage/user_images/";

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
                attributes:{"gardrobe_id": gardrobeData[i].gardrobe_id, "order":i},
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

            gardrobes.on("click",function(){
                window.location="index.php?gardrobe_id="+$(this).attr("gardrobe_id");
            //
                //getMainPageFeed("gardrobe", createMainPageFeed);
                //createAskiForProfilePage(gardrobeData[$(this).attr("order")].hangers);
            })
        }
    }

    getFollowers(decodeURIComponent($.urlParam('user_id')), setFellowers);
    getFollowing(decodeURIComponent($.urlParam('user_id')), setFollowing);

    $("#follow_user").on("click",function(){
        if($(this).attr("following") != "true"){
            followUser(window.user[0].user_id, decodeURIComponent($.urlParam('user_id')), changeButtonType);
        }
        else{
            unfollowUser(window.user[0].user_id, decodeURIComponent($.urlParam('user_id')), changeButtonType);
        }
    });
}

changeButtonType = function(){
    location.reload();
}

setFellowers = function(data){
    var isFollowing=false;
    $("#follower_count").text(data.length);
    var followersContainer = $("#followers_mcustomscrollbar");
    if(data.length == 0){
        followersContainer.append('<span class="no_follower_or_following_text">Henüz seni takip eden kimse yok :(</span>')
    }
    else{
        for(var i=0; i<data.length; i++){
            if(window.user[0].user_id== data[i].user_id)
            {
                isFollowing=true;
            }
            var follower = $(GenerateDomElement({
                nodeType:"div",
                classNames: "feed_item follower_profile_holder",
                attributes:{user_id: data[i].user_id},
                htmlContent:'<div class="follower_profile_picture_holder"> '+
                                '<img  src="storage/user_images/avatars/'+ data[i].pic_id +'" />'+
                            '</div>'+
                            '<span class="follower_profile_name_holder">'+ data[i].name +'</span>'
            }));
            followersContainer.append(follower);

            follower.on("click",function(){
                window.location = "profile_page.php?user_id=" + $(this).attr("user_id");
            });
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

   if(isFollowing){
       $("#follow_user").attr("following","true");
   }

   $("#send_message_to_user").on("click",function(){
       createNewMessage(decodeURIComponent($.urlParam('user_id')));
   });
}

setFollowing = function(data){
    $("#following_count").text(data.length);
    var followingContainer = $("#following_mcustomscrollbar");
    if(data.length == 0){
        followingContainer.append('<span class="no_follower_or_following_text">Henüz takip ettiğin kimse yok :(</span>')
    }
    else{
        for(var i=0; i<data.length; i++){
            var follower = $(GenerateDomElement({
                nodeType:"div",
                classNames: "feed_item follower_profile_holder",
                attributes:{user_id: data[i].user_id},
                htmlContent:'<div class="follower_profile_picture_holder"> '+
                                '<img  src="storage/user_images/avatars/'+ data[i].pic_id +'" />'+
                            '</div>'+
                            '<span class="follower_profile_name_holder">'+ data[i].name +'</span>'
            }));
            followingContainer.append(follower);

            follower.on("click",function(){
                window.location = "profile_page.php?user_id=" + $(this).attr("user_id");
            });
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

setUserData = function(data){
    if(data[0].about.length > 130){
        data[0].about = data[0].about.substring(0,130) + "...";
    }
    $("#profile_page_profile_name").text(data[0].name +" "+ data[0].surname);
    $("#profile_description").text(data[0].about);
    $("#profile_page_profile_picture img").attr("src","storage/user_images/avatars/"+ data[0].pic_id);
}

createAskiForProfilePage = function(data){
    var data = JSON.stringify(data)
    localStorage.setItem("new_aski_data", data);
    window.location = "search_results.php";
}