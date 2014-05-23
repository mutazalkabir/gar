/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 21.05.2014
 * Time: 11:04
 * To change this template use File | Settings | File Templates.
 */

createMessagingDetail = function(){
    var messageDetailsObject = localStorage.getItem("conservation");
    var messageDetailsJSON = JSON.parse(messageDetailsObject);
    setMessages(messageDetailsJSON);
}

setMessages = function(messages){
    var conversationId = messages[0].conversation_id;
    var receiverId = messages[0].user_two;
    var container = $("#messages_detail_content_holder");

    for(var i=0; i<messages.length; i++){
        if(messages[i].user_one == window.user[0].user_id){
            var messageLeftSide = $(GenerateDomElement({
                nodeType:"div",
                classNames:"message_block clearfix left_side",
                htmlContent:'<span class="message_detail_sender_name">'+ messages[i].user_one_name +'</span>' +
                            '<div class="sender_profile_picture">' +
                                '<img src="images/dummy_images/profil.jpg" />' +
                            '</div>' +
                            '<div class="message_detail_message_body">'+ messages[i].message +'</div>' +
                            '<span class="message_detail_message_date">'+ convertDateWithHour(messages[i].message_date) +' tarihinde gönderildi</span>'
            }));

            container.append(messageLeftSide);
        }
        else{
            var messageRightSide = $(GenerateDomElement({
                nodeType:"div",
                classNames:"message_block clearfix right_side",
                htmlContent:'<span class="message_detail_sender_name">'+ messages[i].user_one_name +'</span>' +
                            '<div class="sender_profile_picture">' +
                                '<img src="images/dummy_images/profil.jpg" />' +
                            '</div>' +
                            '<div class="message_detail_message_body">'+ messages[i].message +'</div>' +
                            '<span class="message_detail_message_date">'+ convertDateWithHour(messages[i].message_date) +' tarihinde gönderildi</span>'
            }));

            container.append(messageRightSide);
        }
    }

    $("#message_detail_send_message_button").on("click",function(){
        if($.trim($("#message_body").val()) != ""){
            sendMessage(conversationId, $("#message_body").val(), window.user[0].user_id, receiverId, appendNewMessage);
        }
        else{
            showStatusPopup("Lütfen bir mesaj giriniz","error","")
        }
    });

    appendNewMessage = function(result){
        if(result == true){
            var messageLeftSide = $(GenerateDomElement({
                nodeType:"div",
                classNames:"message_block clearfix left_side",
                htmlContent:'<span class="message_detail_sender_name">'+ window.user[0].name + " " + window.user[0].surname +'</span>' +
                            '<div class="sender_profile_picture">' +
                                '<img src="images/dummy_images/profil.jpg" />' +
                            '</div>' +
                            '<div class="message_detail_message_body">'+ $("#message_body").val() +'</div>' +
                            '<span class="message_detail_message_date">'+ createDate() +' tarihinde gönderildi</span>'
            }));

            container.append(messageLeftSide);
            $("#messages_detail_content_holder").mCustomScrollbar("update");
            $("#message_body").val("")
        }
    }
}

