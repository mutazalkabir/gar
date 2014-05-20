/**
 * Created with JetBrains WebStorm.
 * User: tuncakin
 * Date: 20/05/14
 * Time: 05:45
 * To change this template use File | Settings | File Templates.
 */

showPreloader = function(_afterFinishFunction){
    var preloader = $(GenerateDomElement({
        nodeType:"div",
        attributes:{"id":"preloaderGlass"},
        htmlContent:'<div id="floatingCirclesG">' +
                        '<div class="f_circleG" id="frotateG_01"></div>' +
                        '<div class="f_circleG" id="frotateG_02"></div>' +
                        '<div class="f_circleG" id="frotateG_03"></div>' +
                        '<div class="f_circleG" id="frotateG_04"></div>' +
                        '<div class="f_circleG" id="frotateG_05"></div>' +
                        '<div class="f_circleG" id="frotateG_06"></div>' +
                        '<div class="f_circleG" id="frotateG_07"></div>' +
                        '<div class="f_circleG" id="frotateG_08"></div>' +
                    '</div>'
    }));

    $("body").append(preloader);
}

removePreloader = function(){
    $("#preloaderGlass").css("opacity","0");
    setTimeout(function(){    $("#preloaderGlass").remove();}, 300);

}
