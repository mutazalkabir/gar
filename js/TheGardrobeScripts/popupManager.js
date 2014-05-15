/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 16:35
 * To change this template use File | Settings | File Templates.
 */

    showPopup = function(askiDetayData, whichAski){
        debugger
        var askiDetay = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"glass"},
            htmlContent:'<div id="glass_inner" class="bounceInLeft animated">' +
                            '<i id="close_popup" class="fa fa-times fa-2"></i>' +
                            '<div id="glass_inner_shadow">' +

                            '</div> '+
                        '</div> '
        }));

        $("body").append(askiDetay);

        var askiDetay = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"glass"},
            htmlContent:'<div id="glass_inner" class="bounceInLeft animated">' +
                        '<i id="close_popup" class="fa fa-times fa-2"></i>' +
                            '<div id="glass_inner_shadow">' +

                            '</div> '+
                        '</div> '
        }));

        var askiContentsHolder = $("#glass_inner_shadow");
        var askiProfileItems = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"popup_profile_holder"},
            htmlContent:'<div id="popup_profile_picture" class="popup_profile_items">' +
                            '<img src="images/dummy_images/profil.jpg" />' +
                        '</div>'+

                        '<div id="popup_profile_name" class="popup_profile_items">'+ askiDetayData.name + " " + askiDetayData.surname +'</div>'+
                        "<div id='popup_aski_date' class='popup_profile_items'><span>"+ askiDetayData.create_date +"</span> tarihinde, <span>"+ askiDetayData.category_name +"</span> kategorisinde, <span>" + askiDetayData.gardrobe_id +"</span> gardrobe'unda paylaşıldı.</div>"+
                        '<div id="popup_aski_description" class="popup_profile_items">'+ askiDetayData.about +'</div>'+

                        '<div id="popup_like_share_comment_count" class="popup_profile_items">' +
                            '<div activate="likes_" class="like_count aski_detail_tabs"><i class="fa fa-heart-o"></i>45 Beğeni</div>' +
                            '<div id="aski_comment_tab" activate="comments_" class="comment_count aski_detail_tabs aski_detail_active_tab_item"><i class="fa fa-comment-o"></i>10 Yorum</div>' +
                            '<div activate="shares_" class="share_count aski_detail_tabs"><i class="fa fa-share"></i>6 Paylaşım</div>' +
                        '</div>'+

                        '<div id="comments_holder" class="aski_detail_tab_contents">' +

                        '</div> ' +

                        '<div id="likes_holder" class="aski_detail_tab_contents">' +

                        '</div> ' +

                        '<div id="shares_holder" class="aski_detail_tab_contents">' +

                        '</div> '
        }));

        var askiPictureHolder = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"aski_picture_holder"},
            htmlContent:'<i class="fa fa-angle-left"></i>' +
                            '<div id="aski_picture"><img src="images/dummy_images/kiyafet.jpg" /></div>'+
                        '<i class="fa fa-angle-right"></i>'
        }));

        var askiSendCommentItems = $(GenerateDomElement({
            nodeType:"div",
            attributes:{"id":"send_comment"},
            htmlContent:'<div id="commentor_profile_picture" class="popup_profile_items">' +
                            '<img src="images/dummy_images/profil.jpg" />' +
                        '</div>'+

                        '<textarea id="aski_comment_textarea" placeholder="Yorumunuzu Girin"></textarea>'+

                        '<button type="submit">Yorum Gönder</button>'
        }));


        askiContentsHolder.append(askiPictureHolder);
        askiContentsHolder.append(askiProfileItems);
        $("#popup_profile_holder").append(askiSendCommentItems);

        $("#send_comment").on("click",function(){
            $("#aski_comment_tab").trigger("click");
        });

        $("#aski_comment_textarea").keypress(function(event){
          if (event.which == 64) {
              $.ajax({
                   url: 'photo_tag_phps/friend_names.php',
                   type: 'POST',
                   dataType: 'json',
                   success: function(data){
                         $('#aski_comment_textarea').autocomplete({
                               source: data
                         });
                   }
              }); 
          }
        });
 
        for(var i=0;i<20;i++){
            $("#comments_holder").append('<div class="my_feed_items">' +
                                            '<div class="my_feed_item_content">' +
                                                '<img class="my_feed_profile_picture" src="images/dummy_images/profil.jpg">' +
                                                '<span class="my_feed_feed_content">i alarak karıştırdığı 1500lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile v</span>' +
                                            '</div>' +
                                        '</div>');
        }
        for(var i=0;i<20;i++){
            $("#likes_holder").append('<div class="my_feed_items">' +
                                            '<div class="my_feed_item_content">' +
                                                '<img class="my_feed_profile_picture" src="images/dummy_images/profil.jpg">' +
                                                '<span class="my_feed_feed_content">Tunç Akın</span>' +
                                            '</div>' +
                                        '</div>');
        }

        for(var i=0;i<20;i++){
            $("#shares_holder").append('<div class="my_feed_items">' +
                                    '<div class="my_feed_item_content">' +
                                        '<img class="my_feed_profile_picture" src="images/dummy_images/profil.jpg">' +
                                        '<span class="my_feed_feed_content">Tunç Akın</span>' +
                                    '</div>' +
                                '</div>');
        }

        $("#comments_holder, #likes_holder, #shares_holder").mCustomScrollbar();

        $(".aski_detail_tabs").on("click",function(){
            if(!$(this).hasClass("aski_detail_active_tab_item")){
                $(".aski_detail_tabs").removeClass("aski_detail_active_tab_item");
                $(this).addClass("aski_detail_active_tab_item");

                $(".aski_detail_tab_contents ").css("display","none");
                $("#" + $(this).attr("activate") + "holder").css("display","block");
                $("#" + $(this).attr("activate") + "holder").mCustomScrollbar("update")
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
