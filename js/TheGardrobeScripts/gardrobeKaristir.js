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
        .datePicker({inline:true})
        .bind(
        'dateSelected',
        function(e, selectedDate, $td)
        {
            removeGardrobeKaristir();
            searchResultbyDate("date", selectedDate.getTime(), selectedDate.getTime(),createMainPageFeed);
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
}

setCategoriesForGardrobeKaristir = function(data){
    var container = $(".gardrobe_categories_scrollbar");
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
            searchResult("category",$(this).attr("category_id"),createMainPageFeed);
        });
    }

    $(".gardrobe_categories_scrollbar").mCustomScrollbar();
    $(".gardrobe_categories_scrollbar").mCustomScrollbar("update");

    $(".gardrobe_categories_scrollbar ").on("mouseenter",function(){
        $(".gardrobe_categories_scrollbar").mCustomScrollbar("update");
    });

    $(".gardrobe_categories_scrollbar ").on("mouseleave",function(){
        $(".gardrobe_categories_scrollbar").mCustomScrollbar("update");
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
