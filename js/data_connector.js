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
    debugger

    $.ajax({
        url: "src/register.php",
        type: "POST",
        data:{ mail: _email, name:_name, surname:_surname,pass:_pass,gender:_gender,bdate:_bDate },
        dataType:"text",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
       // window.location=data;
            debugger
        }).fail(function(data) {
              debugger
            // alert( "error" +data );
        }).always(function(data) {
            debugger
            // alert( "finished" + data);
        });
}

function login(_email,_pass){
    $.ajax({
        url: "src/login.php",
        type: "POST",
        data:{ operation:"login", mail: _email,pass:_pass},
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


function logoff(){
    $.ajax({
        url: "src/logoff.php",
        type: "POST",
        data:{ operation:"logoff"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {

    }).fail(function(data) {

    }).always(function(data) {

    });
}
/* Login - Register */

/* Main Page Feed */
function getMainPageFeed(_state, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "gethanger", state: _state},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(mainPageFeedData) {
        _successFunction(mainPageFeedData)
        }).fail(function(data) {
        // alert( "error" +data );
        }).always(function(data) {
            return data;
            // alert( "finished" + data);
        });
}


function searchResult(_type, _typeId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "gethanger", type: _type, type_id: _typeId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(mainPageFeedData) {
            _successFunction(mainPageFeedData)
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            return data;
            // alert( "finished" + data);
        });
}

function searchResultbyDate(_type, _startDate, _endDate, _successFunction){
    debugger
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "gethanger", type: _type, start_date: _startDate, end_date: _endDate},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(mainPageFeedData) {
            _successFunction(mainPageFeedData)
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            return data;
            // alert( "finished" + data);
        });
}

function updateComments(){
    $.ajax({
        url: "src/main.php",
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
function createMyFeed(_userId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getfeeddata", user_id: _userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(mainPageFeedData) {
            _successFunction(mainPageFeedData);
            //eval("setMyFeed(mainPageFeedData)");
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
        url: "src/main.php",
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
        url: "src/main.php",
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
    $.ajax({
        url: "src/main.php",
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
        url: "src/main.php",
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
        url: "src/main.php",
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

/* Aski Yükle */
function getCategories(_successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getcategory"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Aski Yükle */

/* Gardrobe Ekle */
function addGardrobe(_userId, _title, _about){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "addgardrobe", user_id: _userId, title: _title, about: _about},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            addNewGardrobe(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function getGardrobes(_userId){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "listgardrobe", user_id: _userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            setGardrobes(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function getGardrobesForProfilePage(_userId){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "listgardrobe", user_id: _userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            setGardrobesForProfilePage(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Gardrobe Ekle */

/* Aski Ekle */
function addNewHanger(_userId, _categoryId, _gardrobeId, _about, _city, _place, _newFileName, _myTags){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "addhanger", user_id: _userId, category_id: _categoryId, gardrobe_id: _gardrobeId, about: _about, city: _city, place: _place, newfilename: _newFileName, tags: _myTags},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            hangerSuccessfullyAdded(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Aski Ekle */


/* Tag'leri al */
function getTags(){
    $.ajax({
        url: "photo_tag_phps/photo-tags.php",
        type: "GET",
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            debugger
            hangerSuccessfullyAdded(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Tag'leri al */

/* Takipçiler ve Takip Edilenler */
function getFollowers(_userId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getfellowers", fellowed_id: _userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function getFollowing(_userId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getfellows", fellower_id: _userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Takipçiler ve Takip Edilenler */

function updateUserInformation(_userId,_name, _surname, _password, _phoneNumber, _city, _about, _pictureId,  _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "updateuser", user_id: _userId, name: _name, surname: _surname, pass: _password, phone: _phoneNumber, city: _city, about: _about, pic_id: _pictureId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}


function getUser(_userId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getuser",user_id:_userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function getPromotedUsers(_successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getallusers"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}



function followUser(_userId, _followedId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "addfellower", fellower_id: _userId, fellowed_id: _followedId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function unfollowUser(_userId, _followedId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "removefellower", fellower_id: _userId, fellowed_id: _followedId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
