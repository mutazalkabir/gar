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
            removeGardrobeKaristir()
            searchResultbyDate("date", e.timeStamp, e.timeStamp,createMainPageFeed);
            $('#date1').val(selectedDate.asString());
        }
    );
    window.userArray = []
    $.ajax({
        url: "src/main.php",
        type: "get",
        dataType: "json",
        data:{operation:"getallusers"},
        success: function( data ) {
            for(var i=0; i<data.length;i++){
                var userObject = {
                    label:data[i].name + " " + data[i].surname,
                    value:data[i].name + " " + data[i].surname,
                    id:data[i].user_id
                }
                window.userArray.push(userObject);
            }
        }
    });

    $( "#gardrobe_karistir_user_search" ).autocomplete({
        source: window.userArray
    });


/*    $("#gardrobe_karistir_user_search").autocomplete({
        source: function( request, response ) {
            $.ajax({
                dataType: "json",
                type : 'Get',
                url: "src/main.php",
                data:{operation: "getallusers"},
                dataType:"json",
                success: function(data) {
                    var myArray = [];
                    for(var i=0; i<data.length; i++){
                        var obj = {
                            label:"asdfasdf",
                            value:"asdfasdf"
                        }
                        myArray.push(obj);
                    }
                    $('#gardrobe_karistir_user_search').removeClass('ui-autocomplete-loading');
                    response( $.map( myArray, function(item) {
                        console.log(myArray)
                    }));
                },
                error: function(data) {
                    $('#gardrobe_karistir_user_search').removeClass('ui-autocomplete-loading');
                }
            });
        },
        minLength: 0,
        open: function() {

        },
        close: function() {

        },
        focus:function(event,ui) {

        },
        select: function( event, ui ) {

        }
    });*/

/*    $('#gardrobe_karistir_user_search').autocomplete({
        source: function(req, response) {
            $.ajax({
                url: "src/main.php",
                type: "GET",
                data:{operation: "getallusers"},
                dataType:"json",
                success:function( data ) {
                    var re = $.ui.autocomplete.escapeRegex(req.term);
                    var matcher = new RegExp( "^" + re, "i" );
                    response($.grep(data, function(item){return matcher.test(item.value);}) );
                }
            });
        }
    });*/

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
