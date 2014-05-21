/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 24.04.2014
 * Time: 17:08
 * To change this template use File | Settings | File Templates.
 */

createPersonalMessages = function(conservations){
    var  messagesContainer = $("#messages_content");
    for(i=0;i<conservations.length;i++){
        var lastMessageBody = conservations[i].messages[conservations[i].messages.length -1].message;
        if(lastMessageBody.length > 120){
            lastMessageBody = lastMessageBody.substring(0, 120) + "... ";
        }

        var message = $(GenerateDomElement({
            nodeType:"div",
            classNames:"messages",
            attributes:{"message_body": JSON.stringify(conservations[i].messages) },
            htmlContent:'<div class="message_sender_picture">' +
                            '<img src="images/dummy_images/profil.jpg"/>' +
                        '</div>' +
                        '<div class="message_body">' +
                            '<span class="message_sender_name">'+ conservations[i].user_two_name +'</span>' +
                            '<span class="message_content">'+ lastMessageBody +'</span>' +
                            '<span class="message_date">'+ convertDate(conservations[i].date) +'</span>' +
                        '</div>'
        }));
        messagesContainer.append(message);
    }

    messagesContainer.mCustomScrollbar();
    $(".messages").on("click",function(){
        window.location = "messages_detail.html";
        if (typeof(Storage) != "undefined"){
            localStorage.setItem("conservation", $(this).attr("message_body"));
        }
    });
}

