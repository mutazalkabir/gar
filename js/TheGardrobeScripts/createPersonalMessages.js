/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 24.04.2014
 * Time: 17:08
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){
    var  messagesContainer = $("#messages_content");

    createPersonalMessages = function(){
        var message = '<div class="messages">' +
                            '<div class="message_sender_picture">' +
                                '<img src="images/dummy_images/profil.jpg"/>' +
                            '</div>' +
                            '<div class="message_body">' +
                                '<span class="message_sender_name">Tunç Akın</span>' +
                                '<span class="message_content">Deneme Mesaj Body</span>' +
                                '<span class="message_date">24/04/2014</span>' +
                            '</div>' +
                        '</div>'

        for(i=0;i<100;i++){
            messagesContainer.append(message);
        }

        messagesContainer.mCustomScrollbar();

        $(".messages").on("click",function(){
           window.location = "messages_detail.html"
        });
    }
});

