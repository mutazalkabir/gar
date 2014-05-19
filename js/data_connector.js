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

function login(_email,_pass){
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
            loginAndCreateCookie(data);
            // alert( "success" +data );
        }).fail(function(data) {
            showWrongUserNameOrPassword();
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
        data:{operation: "gethanger", state: "all"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(mainPageFeedData) {
        eval("createMainPageFeed(mainPageFeedData)");
        // alert( "success" +data );
        }).fail(function(data) {
        // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Main Page Feed */

/* My Feed Data */
function createMyFeed(){
    $.ajax({
        url: "main.php",
        type: "GET",
        data:{operation: "getfellowshipfeed"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(mainPageFeedData) {
            eval("setMyFeed(mainPageFeedData)");
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* My Feed Data */


/* My Feed Data */
function sendComment(_hangerId, _ownerId, _comment, _commentorId, _hangerOwnerId){
    $.ajax({
        url: "main.php",
        type: "GET",
        data:{operation: "addcomment", hanger_id:_hangerId,  owner_id:_ownerId, comment:_comment, commeter_id:_commentorId, hanger_owner_id:_hangerOwnerId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(newComment) {
            eval("setNewComment(newComment)");
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* My Feed Data */

/* Add Like */
function addLike(_likedId, _likerId, _likedTypeId, _likedUserId){
    debugger
    $.ajax({
        url: "main.php",
        type: "GET",
        data:{operation: "addcomment", liked_id:_likedId,  liker_id:_likerId, like_type_id:_likedTypeId, liked_user_id:_likedUserId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(newLike) {
            debugger
            eval("setNewComment(newComment)");
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Add Like */