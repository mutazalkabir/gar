/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 22.05.2014
 * Time: 11:27
 * To change this template use File | Settings | File Templates.
 */

showAllPopup = function(_popupBodyArray, _popupType, _closeFunction){
    var popupGlass = $(GenerateDomElement({
        nodeType:"div",
        classNames:"popup_glass",
        htmlContent:'<div class="popup_glass_inner"></div>'
    }));

    var popup = $(GenerateDomElement({
        nodeType:"div",
        classNames:"status_popup animated bounceInDown",
        attributes:{"popup_type":_popupType},
        htmlContent:'<div class="popup_top_bar" type="'+ _popupType +'">' +
                        '<i id="close_info_popup" class="fa fa-times fa-2"></i>' +
                    '</div>' +
                    '<div class="popup_body"></div>'
    }));

    popupGlass.find(".popup_glass_inner").append(popup);
    $("body").append(popupGlass);

    setTimeout(function(){
        $(".status_popup").removeClass("animated bounceInDown");
    },550);

    $("#close_info_popup").on("click",function(){
        $(".status_popup").addClass("animated bounceOutUp");
        setTimeout(function(){
            $(".popup_glass").remove();
            $(".status_popup").removeClass("animated bounceOutUp");
        },550);
    });
}