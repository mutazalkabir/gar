/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 28.04.2014
 * Time: 14:50
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){
    gardrobeKaristir = function(){
/*        var gardrobeKaristirWrapper = GenerateDomElement({
            nodeType: "div",
            classNames: [""],
            attributes: {id: "gardrobe_karistir_wrapper"},
            htmlContent: ""
        });*/
        $("#gardrobe_karistir").css("display","block");
        $("#gardrobe_karistir").addClass("fadeInDown animated");
        setTimeout(function(){
            $("#gardrobe_karistir").removeClass("fadeInDown animated");
        },600);

        $(".gardrobe_karistir_sub_items_content_holder").mCustomScrollbar("update");

        $("#datepicker").datepicker();
    }

    removeGardrobeKaristir = function(){
        $("#gardrobe_karistir").addClass("fadeOutUp animated");
        setTimeout(function(){
            $("#gardrobe_karistir").removeClass("fadeOutUp animated");
            $("#gardrobe_karistir").css("display","none");
        },600);
    }
});