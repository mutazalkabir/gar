    /**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 22.04.2014
 * Time: 10:52
 * To change this template use File | Settings | File Templates.
 */

openAddAskiPopup = function(){

    var glass = $(GenerateDomElement({
        nodeType:"div",
        classNames:"my_feed_items",
        attributes:{"id": "glass"},
        htmlContent:'<div id="glass_inner" class="bounceInLeft animated">' +
                        '<i id="close_popup" class="fa fa-times fa-2 new_aski_close_popup"></i>' +
                    '<div id="glass_inner_shadow">' +
                        '<div id="add_new_aski">' +
                            '<div id="add_new_aski_left_side">' +
                                '<div id="new_aski_header">Yeni Askı Yükle</div>' +
                            '</div>' +
                            '<div id="add_new_aski_right_side">' +
                                '<div id="aski_main_image_options"></div>'+
                                '<div id="aski_uploaded_picture_holder">' +
                                    '<i class="flaticon-clothing1"></i>' +
                                    '<span class="new_aski_dummy_text">Sol taraftan bir askı eklediğiniz zaman burada görünecektir</span>' +
                                    '<div id="aski_main_image_holder"></div>'+
                                '</div>' +
                            '</div>' +
                        '</div>' +
                    '</div>'
    }));

    $("body").append(glass);

    var newAskiForm = $(GenerateDomElement({
        nodeType:"form",
        attributes:{"method":"post", "enctype":"multipart/form-data", "name":"image_upload_form", "id":"image_upload_form", "action":"src/upload_image.php"},
        htmlContent:'<table>' +
                        '<tr style="position: relative">' +
                            '<td>Askı</td>' +
                            '<td style="position: relative">' +
                                '<div id="file_browse_wrapper">Askı Yükle'+
                                    '<input type="file" type="file" name="file" id="file_browse">' +
                                '</div>' +
                            '</td>' +
                        '</tr>' +
                        '<tr>' +
                            '<td>Kategori</td>' +
                            '<td><select id="categories_combo"><option selected>Kategori Seçiniz</option></select></td>' +
                        '</tr>' +
                        '<tr style="position: relative">' +
                            '<td>Gardrobe</td>' +
                            '<td><select id="my_gardrobes"></select></td>' +
                            '<td style="position: relative">' +
                                '<div id="add_new_gardrobe">' +
                                    '<i class="fa fa-plus-square"></i>' +
                                    '<div id="create_new_gardrobe_submenu">' +
                                        '<span>Yeni Gardrobe Oluştur</span>' +
                                        '<input type="text" id="gardrobe_title" placeholder="Gardrobe Adı Giriniz"></span>' +
                                        '<div id="add_new_gardrobe_button">Oluştur</div>' +
                                    '</div>'+
                                '</div>' +
                            '</td>' +
                        '</tr>' +
                        '<tr>' +
                            '<td>Şehir</td>' +
                            '<td><select id="cities"><option selected>Şehir Seçiniz</option></select></td>' +
                        '</tr>' +
                        '<tr>' +
                            '<td>Mekan Adı</td>' +
                            '<td><input type="text" id="new_aski_place" placeholder="Mekan Adı Giriniz"></td>' +
                        '</tr>' +
                        '<tr>' +
                        '<td>Askı Açıklaması</td>' +
                            '<td><textarea rows="5" id="new_aski_description" placeholder="Askınız hakkında kısa bir açıklama girin..."></textarea></td>' +
                        '</tr>' +
                    '</table>'
    })) ;

    $("#add_new_aski_left_side").append(newAskiForm);
    $("#add_new_aski_left_side").append('<button id="add_new_aski_button">Kaydet</button>');

    $("#add_new_gardrobe_button").on("click",function(){
        if($.trim($("#gardrobe_title").val()) != ""){
            addGardrobe(window.user[0].user_id, $("#gardrobe_title").val()  , "dummy");
            $("#my_gardrobes  option").remove();
            showStatusPopup("Gardrobe Başarıyla Oluşturuldu!", "success", "");
        }
        else{
            showStatusPopup("Lütfen Gardrobe Adı Giriniz!", "error", "");
        }
    })

    addNewGardrobe = function(data){
        if(data == true){
            getGardrobes(window.user[0].user_id);
        }
        else{
            showStatusPopup("Gardrobe Oluşturulamadı!", "error", "");
        }
    }



    setCategories = function(data){
        var categories = $("#categories_combo");
        var citiesOfTurkey = $("#cities");
        for(var i=0; i<data.length; i++){
            categories.append('<option value="'+ data[i].category_id +'" id="'+ data[i].category_id +'">'+ data[i].category_name +'</option>')
        }

        for(var j=0; j<cities.length; j++){
            citiesOfTurkey.append('<option>'+ cities[j]+'</option>')
        }
    }
    getCategories(setCategories);


    setGardrobes = function(data){
        var myGardrobes = $("#my_gardrobes");
        for(var i=0; i<data.length; i++){
            myGardrobes.append('<option id="'+ data[i].gardrobe_id +'">'+ data[i].gardrobe_name +'</option>')
        }
    }
    getGardrobes(window.user[0].user_id);
    $("#categories_combo").on("change",function(){
        window.selectedCategoryId = $(this).find("option:selected").attr("id");
    });

    $("#my_gardrobes").on("change",function(){
        window.selectedGardrobeId = $(this).find("option:selected").attr("id");
    });

    $('#file_browse').live('change', function(){
        $("#image_upload_form").ajaxForm({
            target: '#aski_uploaded_picture_holder',
            success: function(){
                $(".photoTag").photoTag();
            }
        }).submit();
    });

    $("#add_new_aski_button").on("click",function(){
        debugger
        var myTags = JSON.stringify(window.TAGS);
        debugger
        //addNewHanger(window.user[0].user_id, window.selectedCategoryId,  window.selectedGardrobeId, $("#new_aski_description").val(), $("#cities").find("option:selected").val(), $("#new_aski_place").val(), $(".photoTag").attr("id"), myTags);
        //MUTAZ değiştirdim çünkü alamıyordu selected gardroubu
        addNewHanger(window.user[0].user_id, window.selectedCategoryId,  $("#my_gardrobes").find(":selected").attr("id"), $("#new_aski_description").val(), $("#cities").find("option:selected").val(), $("#new_aski_place").val(), $(".photoTag").attr("id"), myTags);
    });

    hangerSuccessfullyAdded = function(data){
        if(data == true){
            showStatusPopup("Askı Başarıyla Oluşturuldu :)", "success", "");
            $(".feed_item").remove();
            //MUTAZ
            getMainPageFeed("fellowed",createMainPageFeed);
            showPreloader();
        }
        else{
            showStatusPopup("Askı Oluşturulamadı :(", "error", "");
        }
    }

    $("#close_popup").on("click",function(){
        $("#glass_inner").removeClass("bounceInLeft animated");
        $("#glass_inner").addClass("bounceOutRight animated");
        setTimeout(function(){
            $("#glass, #glass_inner").remove();
        },400);
    });
}