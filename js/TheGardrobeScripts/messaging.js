/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 25.04.2014
 * Time: 15:34
 * To change this template use File | Settings | File Templates.
 */

createNewMessage = function(){
    var receiverId = "";
    $("body").append('<div id="glass">' +
                        '<div id="glass_inner" class="bounceInLeft animated new_message">' +
                        '<i id="close_popup" class="fa fa-times fa-2"></i>' +
                            '<div id="new_message_holder">' +
                                '<span>Yeni Mesaj Gönder</span>' +
                                '<input id="message_receiver_input" type="text" placeholder="Alıcı ismi giriniz">'+
                                '<textarea id="new_message_body" placeholder="Mesajınızı Girin"></textarea>'+
                                '<button id="create_new_message" type="submit">Gönder</button>'+
                            '</div>'+

                        '</div> '+
                    '</div> ');





    $("#message_receiver_input").autocomplete({
        source: function(req, response) {
            $.ajax({
                url: "src/main.php",
                type: "GET",
                data:{operation: "getallusers"},
                dataType: "json",
                success: function( data ) {
                    var re = $.ui.autocomplete.escapeRegex(req.term);
                    var matcher = new RegExp( "^" + re, "i" );
                    response($.grep(data, function(item){return matcher.test(item.value);}) );
                }
            });
        },
        minLength: 0,
        select: function(event, ui) {
            receiverId = ui.item.user_id;
        }
    });

    $("#create_new_message").on("click",function(){
        sendMessage("-1", $("#new_message_body").val(), window.user[0].user_id, receiverId, messageSent)
    });

    $("#close_popup").on("click",function(){
        $("#glass_inner").removeClass("bounceInLeft animated");
        $("#glass_inner").addClass("bounceOutRight animated");
        setTimeout(function(){
            $("#glass, #glass_inner").remove();
        },400);
    });
}

messageSent = function(data){
    //TODO MESSAGE SUCCESSFULLY SENT
    debugger
}
