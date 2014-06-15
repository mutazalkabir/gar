/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 24.04.2014
 * Time: 17:08
 * To change this template use File | Settings | File Templates.
 */

createPersonalMessages = function(conservations){
    var  messagesContainer = $("#messages_content");
    var unreadMessageCount = 0;
    for(i=0;i<conservations.length;i++){
        if(conservations[i].receiver_read == 0&&conservations[i].last_sender != window.user[0].user_id){
            unreadMessageCount++;
        }

        var lastMessageBody = conservations[i].messages[conservations[i].messages.length -1].message;
        if(lastMessageBody.length > 120){
            lastMessageBody = lastMessageBody.substring(0, 120) + "... ";
        }
        var message = $(GenerateDomElement({
            nodeType:"div",
            classNames:"messages",
            attributes:{"message_body": JSON.stringify(conservations[i].messages), conversation_id: conservations[i].conversation_id },
            htmlContent:'<div class="message_sender_picture">' +
                            '<img src="storage/user_images/avatars/'+ conservations[i].user_two_pic_id +'" />' +

                '</div>' +
                        '<div class="message_body">' +
                            '<span class="message_sender_name">'+ conservations[i].user_two_name +'</span>' +
                            '<span class="message_content">'+ lastMessageBody +'</span>' +
                            '<span class="message_date">'+ convertDate(conservations[i].date) +'</span>' +
                        '</div>'
        }));
        messagesContainer.append(message);
    }

    if(unreadMessageCount > 0){
        $("#messages").attr("hasNewItem","true");
        $("#messages").find(".notification_count_holder").text(unreadMessageCount);
    }
    else{
        $("#messages").attr("hasNewItem","false");
    }

    messagesContainer.mCustomScrollbar();
    $(".messages").on("click",function(){

        var message=$(this);
        setConversationsRead($(this).attr("conversation_id"),function(){
            if (typeof(Storage) != "undefined"){
                localStorage.setItem("conservation", message.attr("message_body"));
                debugger
                localStorage.setItem("conversationid", message.attr("conversation_id"));

            }
            window.location = "messages_detail.php";


        });

    });
}

