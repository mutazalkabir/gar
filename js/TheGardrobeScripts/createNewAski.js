/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 22.04.2014
 * Time: 10:52
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){
    openAddAskiPopup = function(){
                        $("body").append('<div id="glass">' +
                            '<div id="glass_inner" class="bounceInLeft animated">' +
                                '<i id="close_popup" class="fa fa-times fa-2 new_aski_close_popup"></i>' +
                                '<div id="glass_inner_shadow">' +
                                '<div id="add_new_aski">' +
                                    '<div id="add_new_aski_left_side">' +
                                        '<div id="new_aski_header">Yeni Askı Yükle</div>' +
                                        '<table>' +
                                            '<tr style="position: relative">' +
                                                '<td>Askı</td>' +
                                                '<td style="position: relative">'+
                                                    '<div id="file_browse_wrapper">Askı Yükle'+
                                                        '<input type="file" id="file_browse">' +
                                                    '</div>' +
                                                '</td>' +
                                            '</tr>' +     
                                            '<tr>' +
                                                '<td>Kategori</td>' +
                                                '<td><select><option selected>Kategori Seçiniz</option></select></td>' +
                                            '</tr>' +    
                                            '<tr style="position: relative">' +
                                                '<td>Gardrobe</td>' +
                                                '<td><select><option selected>Gardrobe Seçiniz</option><option>TheGardrobe</option></select></td>' +
                                                '<td style="position: relative">' +
                                                    '<div id="add_new_gardrobe">' +
                                                        '<i class="fa fa-plus-square"></i>' +
                                                        '<div id="create_new_gardrobe_submenu">' +
                                                            '<span>Yeni Gardrobe Oluştur</span>' +
                                                            '<input type="text" placeholder="Gardrobe Adı Giriniz"></span>' +

                                                            '<button>Oluştur</button>' +
                                                        '</div>'+
                                                    '</div>' +
                                                '</td>' +
                                            '</tr>' +  
                                            '<tr>' +
                                                '<td>Şehir</td>' +
                                                '<td><select><option selected>Şehir Seçiniz</option></select></td>' +
                                            '</tr>' +
                                            '<tr>' +
                                                '<td>Mekan Adı</td>' +
                                                '<td><input type="text" placeholder="Mekan Adı Giriniz"></td>' +
                                            '</tr>' +                                                                                                                                                                 
                                            '<tr>' +
                                                '<td>Askı Açıklaması</td>' +
                                                '<td><textarea rows="5" placeholder="Askınız hakkında kısa bir açıklama girin..."></textarea></td>' +
                                            '</tr>' +
                                        '</table>'+
                                        '<button>Kaydet</button>'+
                                    '</div>' +
                                    '<div id="add_new_aski_right_side">' +
                                        '<div id="aski_main_image_options"></div>'+
                                        '<div id="aski_uploaded_picture_holder">' +
                                            '<i class="flaticon-clothing1"></i>' +
                                            '<span class="new_aski_dummy_text">Sol taraftan bir askı eklediğiniz zaman burada görünecektir</span>' +
                                            //'<div id="aski_main_image_holder"><img class="photoTag" id="aski_main_image" src="images/dummy_images/kiyafet.jpg"/></div>'+
                                        '</div>' +
                                    '</div>' +
                                '</div> '


    )
        $('.photoTag').photoTag();
        $("#close_popup").on("click",function(){
            $("#glass_inner").removeClass("bounceInLeft animated");
            $("#glass_inner").addClass("bounceOutRight animated");
            setTimeout(function(){
                $("#glass, #glass_inner").remove();
            },400);
        });
    }
});