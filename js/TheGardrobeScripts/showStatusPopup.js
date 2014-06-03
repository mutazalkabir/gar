/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 22.05.2014
 * Time: 11:27
 * To change this template use File | Settings | File Templates.
 */

showStatusPopup = function(_popupMessage, _popupType, _closeFunction){
    var popupGlass = $(GenerateDomElement({
        nodeType:"div",
        classNames:"popup_glass",
        htmlContent:'<div class="popup_glass_inner"></div>'
    }));

    if(_popupType == "tagfriends"){
        var popup = $(GenerateDomElement({
            nodeType:"div",
            classNames:"status_popup animated bounceInDown",
            attributes:{"style":"height:500px"},
            htmlContent:'<div id="append_friends" class="popup_top_bar" type="'+ _popupType +'">' +
                            '<i id="close_info_popup" class="fa fa-times fa-2"></i>' +
                        '</div>' +
                        '<div style="top: 50px; margin-top: 0px; font-size: 14px;" class="popup_body">'+ _popupMessage +'</div>'+
                        '<div class="all_friends_holder"></div>'+
                        "<button class='tag_them'>Seçilileri Tag'le :)</button>"
        }));

        getPromotedUsers(setFriendsForTagging);
    }

    else{
        var popup = $(GenerateDomElement({
            nodeType:"div",
            classNames:"status_popup animated bounceInDown",
            htmlContent:'<div class="popup_top_bar" type="'+ _popupType +'">' +
                            '<i id="close_info_popup" class="fa fa-times fa-2"></i>' +
                        '</div>' +
                        '<div class="popup_body">'+ _popupMessage +'</div>'
        }));
    }


    popupGlass.find(".popup_glass_inner").append(popup);

    $("body").append(popupGlass);

    $(".tag_them").on("click",function(){
        debugger
        if(!window.taggedFriends)
        {
            window.taggedFriends = new Array();
            window.taggedFriendsList="";
        }
        var taggedFriends = [];
        for(var j=0; j<$(".tagged_friend").length; j++){
            var friend = {
                name: $($(".tagged_friend")[j]).text(),
                user_id: $($(".tagged_friend")[j]).attr("user_id")
            }
            var friendId  =  $($(".tagged_friend")[j]).attr("user_id");

            window.taggedFriendsList=window.taggedFriendsList+","+$($(".tagged_friend")[j]).attr("user_id");
            window.taggedFriends.push(friendId);
            taggedFriends.push(friend);
            $("#aski_comment_textarea").val($("#aski_comment_textarea").val() + friend.name + ", ")
        }

        $(".status_popup").addClass("animated bounceOutUp");
        setTimeout(function(){
            $(".popup_glass").remove();
            $(".status_popup").removeClass("animated bounceOutUp");
        },550);


    });

    setTimeout(function(){
        $(".status_popup").removeClass("animated bounceInDown");
    },550);

    $("#close_info_popup").on("click",function(){
       closeStatusPopup(_closeFunction);
    });
}

closeStatusPopup = function(_closeFunction){
    $(".status_popup").addClass("animated bounceOutUp");
    setTimeout(function(){
        $(".popup_glass").remove();
        $(".status_popup").removeClass("animated bounceOutUp");
    },550);
}
