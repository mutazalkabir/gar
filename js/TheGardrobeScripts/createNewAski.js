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

    getCategories();

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

    getGardrobes(window.user[0].user_id);

    setGardrobes = function(data){
        var myGardrobes = $("#my_gardrobes");
        for(var i=0; i<data.length; i++){
            myGardrobes.append('<option id="'+ data[i].gardrobe_id +'">'+ data[i].gardrobe_name +'</option>')
        }
    }

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
        //addNewHanger(window.user[0].user_id, window.selectedCategoryId,  window.selectedGardrobeId, $("#new_aski_description").val(), $("#cities").find("option:selected").val(), $("#new_aski_place").val(), $("#aski_uploaded_picture_holder img").attr("src"));
        addNewHanger(window.user[0].user_id, window.selectedCategoryId,  window.selectedGardrobeId, $("#new_aski_description").val(), $("#cities").find("option:selected").val(), $("#new_aski_place").val(), $(".photoTag").attr("id"));
    });

    hangerSuccessfullyAdded = function(data){
        if(data == true){
            showStatusPopup("Askı Başarıyla Oluşturuldu :)", "success", "");
            $(".feed_item").remove();
            getMainPageFeed();
            showPreloader();
        }
        else{
            showStatusPopup("Askı Oluşturulamadı :(", "error", "");
        }
    }




              /*      $("body").append('<div id="glass">' +
                        '<div id="glass_inner" class="bounceInLeft animated">' +
                            '<i id="close_popup" class="fa fa-times fa-2 new_aski_close_popup"></i>' +
                            '<div id="glass_inner_shadow">' +
                            '<div id="add_new_aski">' +
                                '<div id="add_new_aski_left_side">' +
                        '<form method="post" enctype="multipart/form-data" name="image_upload_form" id="image_upload_form" action="src/upload_image.php">'+
                                    '<div id="new_aski_header">Yeni Askı Yükle</div>' +
                                    '<table>' +
                                        '<tr style="position: relative">' +
                                            '<td>Askı</td>' +
                                            '<td style="position: relative">'+
                                                '<div id="file_browse_wrapper">Askı Yükle'+
                                                    '<input type="file" type="file" name="file" id="file_browse">' +
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

                                    '<button id="add_new_aski_button">Kaydet</button>'+
                                '</form>'+
                                '</div>' +
                                '<div id="add_new_aski_right_side">' +
                                    '<div id="aski_main_image_options"></div>'+
                                    '<div id="aski_uploaded_picture_holder">' +
                                        '<i class="flaticon-clothing1"></i>' +
                                        '<span class="new_aski_dummy_text">Sol taraftan bir askı eklediğiniz zaman burada görünecektir</span>' +
                                        //'<div id="aski_main_image_holder"><img class="photoTag" id="aski_main_image" src="images/dummy_images/kiyafet.jpg"/></div>'+
                                    '</div>' +
                                '</div>' +
                            '</div> '     */



    $("#close_popup").on("click",function(){
        $("#glass_inner").removeClass("bounceInLeft animated");
        $("#glass_inner").addClass("bounceOutRight animated");
        setTimeout(function(){
            $("#glass, #glass_inner").remove();
        },400);
    });
/*
    $("#file_browse").live('change',function(e) {
        var formData = new FormData($(this)[0]);
        alert("tık");
        debugger

        formData.append("user_id","4");
        formData.append("gardrobe_id","5");
        formData.append("category_id","1");
        formData.append("city","ankara");
        formData.append("place","starbucks");
        formData.append("about","nothing");
        $.ajax({
            url: "src/upload_image.php",
            type: "POST",
            //data: {operation:"addhanger",formData:formData,user_id:"4",gardrobe_id:"5", category_id:"1",city:"ankara",place:"starbucks",about:"nothing"},
            data:formData,
            dataType:"multipart/form-data",
            async: false,
            success: function (msg) {
                alert(msg)
            },
            cache: false,
            contentType: false,
            processData: false
        });

        e.preventDefault();
    });

}*/

/*     $("form[name='image_upload_form']").submit(function(e) {
        var formData = new FormData($(this)[0]);
        alert("tık")

        formData.append("user_id","4");
        formData.append("gardrobe_id","5");
        formData.append("category_id","1");
        formData.append("city","ankara");
        formData.append("place","starbucks");
        formData.append("about","nothing");
        $.ajax({
            url: "src/upload_image.php",
            type: "POST",
            //data: {operation:"addhanger",formData:formData,user_id:"4",gardrobe_id:"5", category_id:"1",city:"ankara",place:"starbucks",about:"nothing"},
            data:formData,
            dataType:"multipart/form-data",
            async: false,
            success: function (msg) {
                alert(msg)
            },
            cache: false,
            contentType: false,
            processData: false
        });

        e.preventDefault();
    });*/

}