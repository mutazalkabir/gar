/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 28.04.2014
 * Time: 14:50
 * To change this template use File | Settings | File Templates.
 */

gardrobeKaristir = function(){
    window.gardrobeKaristirOpened = true;
    $("#gardrobe_karistir").css("display","block");
    $("#gardrobe_karistir").addClass("fadeInDown animated");

    setTimeout(function(){
        $("#gardrobe_karistir").removeClass("fadeInDown animated");
    },600);

    $(".gardrobe_categories_scrollbar").mCustomScrollbar("update");
    $(".gardrobe_categories_scrollbar").mouseenter(function(){
        $(".gardrobe_categories_scrollbar").mCustomScrollbar("update");
    });
    $("#place_search").mouseenter(function(){
        $("#date_search").css("width", "120px");
    });

    $("#place_search").mouseleave(function(){
        $("#date_search").css("width", "190px");
    });
    $('#date-view1')
        .datePicker({inline:true, startDate:'01/01/2014'})
        .bind(
        'dateSelected',
        function(e, selectedDate, $td)
        {
            removeGardrobeKaristir();

            var startDate = new Date();
            var endDate = new Date();
            startDate.setDate(selectedDate.getDate());
            startDate.setMonth(selectedDate.getMonth());
            startDate.setFullYear(selectedDate.getFullYear());
            startDate.setHours(0);
            startDate.setMinutes(0);
            startDate.setSeconds(0);
            endDate.setDate(selectedDate.getDate());
            endDate.setMonth(selectedDate.getMonth());
            endDate.setFullYear(selectedDate.getFullYear());
            endDate.setHours(23);
            endDate.setMinutes(59);
            endDate.setSeconds(59);


            searchResultbyDate("date", startDate.getTime()/1000, endDate.getTime()/1000,createMainPageFeed);
            $('#date1').val(selectedDate.asString());
        }
    );

    getPromotedUsers(setPromotedUsers);

    $("#show_all_cities").off("click");
    $("#show_all_cities").on("click",function(){
       showAllPopup(cities, "showall",removeGardrobeKaristir);
    });

    $("#place span").not("#show_all_cities").on("click",function(){
        removeGardrobeKaristir()
        searchResult("city",$(this).text(),createMainPageFeed);
    });


    getCategories(setCategoriesForGardrobeKaristir);
    getBrands(setBrands);

    $("#gardrobe_karistir_user_search").autocomplete({
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
        minLength: 1,
        select: function(event, ui) {
            window.location = "profile_page.php?user_id=" + ui.item.user_id;
        }
    });


    $('#gardrobe_karistir, #search_input').on("click",function(event){
        event.stopPropagation();
    });

    $('html').click(function(e) {
        if(e.target.id != "search_input"){
            removeGardrobeKaristir();
        }
    });

}

setBrands = function(data){
    var container = $("#brands_holder").find(".gardrobe_karistir_sub_items_content_holder");

    $(".gardrobe_karistir_brands").remove();

    for(var i=0; i<data.length; i++){
        var gardrobeKaristirBrandItem = $(GenerateDomElement({
            nodeType:"div",
            classNames:"gardrobe_karistir_brands",
            attributes: {},
            htmlContent:'<div class="brands_holder">'+
                        '<div class="brand_logo">'+
                            '<img src="storage/brand_images/'+ data[i].brand_pic +'"/>'+
                        '</div>'+
                            '<span class="brand_name">'+ data[i].brand_name +'</span>'+
                        '</div>'
        }));

        container.prepend(gardrobeKaristirBrandItem);

        gardrobeKaristirBrandItem.on("click",function(){
            removeGardrobeKaristir()
            searchResult("brand", $(this).find(".brand_name").text(), createMainPageFeed)
        })
    }

    container.mCustomScrollbar();
    container.mCustomScrollbar("update");

    container.on("mouseenter",function(){
        container.mCustomScrollbar("update");
    });

    container.on("mouseleave",function(){
        container.mCustomScrollbar("update");
    });
}

setCategoriesForGardrobeKaristir = function(data){
    var container = $("#gardrobe_categories").find(".gardrobe_karistir_sub_items_content_holder");

    $(".gardrobe_karistir_category_items").remove();
    for(var i=0; i<data.length; i++){
        var gardrobeKaristirCategoryItem = $(GenerateDomElement({
            nodeType:"div",
            classNames:"gardrobe_karistir_category_items",
            attributes: {category_id: data[i].category_id},
            htmlContent:'<div class="category_holder">'+
                            '<i class="flaticon-gardrobe-bikini4"></i>' +
                        '</div>'+
                        '<span class="category_name">'+ data[i].category_name +'</span>'
        }));
        container.prepend(gardrobeKaristirCategoryItem);

        gardrobeKaristirCategoryItem.on("click",function(){
            removeGardrobeKaristir()
            searchResult("category",$(this).attr("category_id"),createMainPageFeed);
        });
    }

    container.mCustomScrollbar();
    container.mCustomScrollbar("update");

    container.on("mouseenter",function(){
        setTimeout(function(){
            container.mCustomScrollbar("update");
        },200);
    });

    container.on("mouseleave",function(){
        setTimeout(function(){
            container.mCustomScrollbar("update");
        },200);
    });
}



setPromotedUsers = function(data){
    var container = $("#search_user").find(".gardrobe_karistir_sub_items_content_holder");
    $(".uye_ara_uye_holder").remove();
    randomUsers = [];
    for(var i=0; i<6; i++){
        var randomUser = data[Math.floor(Math.random()*data.length)];
        randomUsers.push(randomUser);
    }
    for(var j=0; j<randomUsers.length; j++){
        var randomUser = $(GenerateDomElement({
            nodeType:"div",
            classNames:"uye_ara_uye_holder",
            attributes: {user_id: randomUsers[j].user_id},
            htmlContent:'<div class="uye_ara_picture_holder">'+
                            '<img src="storage/user_images/avatars/'+ randomUsers[j].pic_id +'" />'+
                        '</div>'+
                        '<span class="follower_profile_name_holder">'+ randomUsers[j].name +'</span>'
        }));
        container.prepend(randomUser);

        randomUser.on("click",function(){
            removeGardrobeKaristir()
            window.location = "profile_page.php?user_id=" + $(this).attr("user_id");
        });
    }
}

removeGardrobeKaristir = function(){
    window.gardrobeKaristirOpened = false;
    $("#gardrobe_karistir").addClass("fadeOutUp animated");
    setTimeout(function(){
        $("#gardrobe_karistir").removeClass("fadeOutUp animated");
        $("#gardrobe_karistir").css("display","none");
    },600);
}
