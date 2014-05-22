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
        removePreloader();
        eval("createMainPageFeed(mainPageFeedData)");
        // alert( "success" +data );
        }).fail(function(data) {
        // alert( "error" +data );
        }).always(function(data) {
            return data;
            // alert( "finished" + data);
        });
}

function updateComments(){
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
            eval("updateFeed(mainPageFeedData)");
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            return data;
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


/* Send New Comment */
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
/* Send New Comment */

/* Add Like */
function addLike(_likedId, _likerId, _likedTypeId, _likedUserId){
    $.ajax({
        url: "main.php",
        type: "GET",
        data:{operation: "addlike", liked_id:_likedId,  liker_id:_likerId, liked_type_id:_likedTypeId, liked_user_id:_likedUserId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(newLike) {
            eval("setNewLike(newLike)");
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Add Like */

/* Add Share */
function addShare(_sharedId, _sharerId, _sharedUserId){
    debugger
    $.ajax({
        url: "main.php",
        type: "GET",
        data:{operation: "addshare", hanger_id:_sharedId,  sharer_id:_sharerId, shared_user_id:_sharedUserId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(newShare) {
            debugger
            eval("setNewShare(newShare)");
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Add Share */

/* Get Conversations */
function getAllConversations(_userId){
    $.ajax({
        url: "main.php",
        type: "GET",
        data:{operation: "getallconversations", user_id:_userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(conversations) {
            eval("createPersonalMessages(conversations)");
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Get Conversations */

/* Send Message */
function sendMessage(_conversationId, _messageBody, _senderId, _receiverId, _successFunction){
    $.ajax({
        url: "main.php",
        type: "GET",
        data:{operation: "sendmessage", sender_id:_senderId, receiver_id:_receiverId, message:_messageBody, conversation_id:_conversationId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(newMessageData) {
            _successFunction(newMessageData);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Send Message */