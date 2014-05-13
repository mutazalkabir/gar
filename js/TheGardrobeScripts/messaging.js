/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 25.04.2014
 * Time: 15:34
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){   
    createNewMessage = function(){
        $("body").append('<div id="glass">' +
                            '<div id="glass_inner" class="bounceInLeft animated new_message">' +
                            '<i id="close_popup" class="fa fa-times fa-2"></i>' +

                                '<div id="new_message_holder">' +
                                    '<span>Yeni Mesaj Gönder</span>' +
                                    '<input id="message_receiver_input" type="text" placeholder="Alıcı ismi giriniz">'+
/*                                    '<div id="popup_profile_holder">' +
                                        '<div id="popup_profile_picture" class="popup_profile_items">' +
                                            '<img src="images/dummy_images/profil.jpg" />' +
                                        '</div>'+
                                    '<div id="popup_profile_name" class="popup_profile_items">Tunç Akın</div>'+*/
                                    '<textarea placeholder="Mesajınızı Girin"></textarea>'+

                                    '<button type="submit">Gönder</button>'+
                                '</div>'+

                            '</div> '+
                        '</div> ');

          $.ajax({
               url: 'photo_tag_phps/friend_names.php',
               type: 'POST',
               dataType: 'json',
               success: function(data){
                     $('#message_receiver_input').autocomplete({
                           source: data
                     });
               }
          }); 

        $("#close_popup").on("click",function(){
            $("#glass_inner").removeClass("bounceInLeft animated");
            $("#glass_inner").addClass("bounceOutRight animated");
            setTimeout(function(){
                $("#glass, #glass_inner").remove();
            },400);
        });
    }
});
