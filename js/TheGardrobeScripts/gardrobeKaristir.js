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
            $('#date1').val(selectedDate.asString());
        }
    );
    $("#show_all_cities").off("click");
    $("#show_all_cities").on("click",function(){
       showAllPopup(cities, "showall",removeGardrobeKaristir);
    });

    $("#place span").not("#show_all_cities").on("click",function(){
        removeGardrobeKaristir()
        searchResult("city",$(this).text(),createMainPageFeed);
    });
}

removeGardrobeKaristir = function(){
    window.gardrobeKaristirOpened = false;
    $("#gardrobe_karistir").addClass("fadeOutUp animated");
    setTimeout(function(){
        $("#gardrobe_karistir").removeClass("fadeOutUp animated");
        $("#gardrobe_karistir").css("display","none");
    },600);
}
