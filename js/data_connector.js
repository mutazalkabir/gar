/**
 * Created with JetBrains WebStorm.
 * User: tuncakin
 * Date: 13/05/14
 * Time: 21:30
 * To change this template use File | Settings | File Templates.
 */

/* Login - Register */
function register(_email,_name,_surname,_pass,_gender,_bDate)
{

    $.ajax({
        url: "register.php",
        type: "POST",
        data:{ mail: _email, name:_name, surname:_surname,pass:_pass,gender:_gender,bdate:_bDate },
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {

            // alert( "success" +data );
        }).fail(function(data) {

            // alert( "error" +data );
        }).always(function(data) {

            // alert( "finished" + data);
        });
}

function login(_email,_pass)
{

    $.ajax({
        url: "login.php",
        type: "POST",
        data:{ mail: _email,pass:_pass},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {

            // alert( "success" +data );
        }).fail(function(data) {

            // alert( "error" +data );
        }).always(function(data) {

            // alert( "finished" + data);
        });
}
/* Login - Register */

/* Main Page Feed */
function getMainPageFeed(){
    $.ajax({
        url: "main.php",
        type: "GET",
        operation: "gethanger",
        data:{state: "all"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(mainPageFeedData) {
        debugger
        eval("createMainPageFeed(mainPageFeedData)");
        // alert( "success" +data );
        }).fail(function(data) {
            debugger
        // alert( "error" +data );
        }).always(function(data) {
            debugger
            // alert( "finished" + data);
        });
}
/* Main Page Feed */
