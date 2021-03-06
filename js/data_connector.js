/**
 * Created with JetBrains WebStorm.
 * User: tuncakin
 * Date: 13/05/14
 * Time: 21:30
 * To change this template use File | Settings | File Templates.
 */

/* Login - Register */
function confirmation(_confirmationCode, _successFunction)
{
    $.ajax({
        url: "src/confirm.php",
        type: "POST",
        data:{confirmation_code: _confirmationCode},
        dataType:"json",
        async: false,
        cache: true
    }).done(function(data) {
        debugger

    }).fail(function(data) {
        debugger
        // alert( "error" +data );
    }).always(function(data) {
        debugger
        _successFunction(data)
        // alert( "finished" + data);
    });
}

function register(_email,_name,_surname,_pass,_gender,_bDate, _successFunction)
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
            debugger
            _successFunction(data);
       // window.location=data;
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
        if(data=="false" || data==false)
        {
            showWrongUserNameOrPassword();

        }
        else
        {
            loginAndCreateCookie(data);
        }

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
        debugger
        //window.location = "login_register.php";

    }).fail(function(data) {
       // window.location = "login_register.php";
    }).always(function(data) {
        window.location = "login_register.php";
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

function getHangerById(_hangerId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "gethangerbyid", hanger_id: _hangerId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(hangerData) {
            debugger
            _successFunction(hangerData)
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            return data;
            // alert( "finished" + data);
        });
}

function getNotifications(_userId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getnotifications", user_id: _userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data)
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
    debugger
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
            debugger
            _successFunction(mainPageFeedData);
            //eval("setMyFeed(mainPageFeedData)");
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
            debugger
            // alert( "finished" + data);
        });
}
/* My Feed Data */


/* Send New Comment */
function sendComment(_hangerId, _ownerId, _comment, _commentorId, _hangerOwnerId,_mentionedFriendsList){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "addcomment", hanger_id:_hangerId,  owner_id:_ownerId, comment:_comment, commeter_id:_commentorId, hanger_owner_id:_hangerOwnerId,mentionedFriendsList:_mentionedFriendsList},
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

/* Send New Mention */
function sendMentionedFriends(_hangerId, _comment, _mentioner_id,_mentionedFriendsList){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "addmention", hanger_id:_hangerId, comment:_comment, mentioner_id:_mentioner_id, mentionedFriendsList:_mentionedFriendsList},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(newComment) {
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Send New Mention */

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
            eval("setNewShare(newShare)");
            // alert( "success" +data );
        }).fail(function(data) {
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



function getAllConversationsDetailPage(_userId,_succesFunction){
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
           // eval("createPersonalMessages(conversations)");
            _succesFunction(conversations);
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function setConversationsRead(_conversationId,_succesFunction){
    debugger
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "markconversationasread", conversation_id:_conversationId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            debugger
            // alert( "success" +data );
        }).fail(function(data) {
            debugger
            // alert( "error" +data );
        }).always(function(data) {
        _succesFunction();
            // alert( "finished" + data);
        });
}

function setNotificationsRead(_userId){
    debugger
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "notificationsseen", user_id:_userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            debugger
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
    debugger
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
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Aski Yükle */
function getReports(_successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getreports"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
        _successFunction(data);
        // alert( "success" +data );
    }).fail(function(data) {
        // alert( "error" +data );
    }).always(function(data) {
        // alert( "finished" + data);
    });
}

function deleteHanger(_hangerId){
    debugger
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "deletehanger", hanger_id: _hangerId},
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

function getBrands(_successFunction){
    debugger
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "listbrands"},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

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
            debugger
            setGardrobes(data);
            // alert( "success" +data );
        }).fail(function(data) {
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function getGardrobesForProfilePage(_userId){
    debugger
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
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Gardrobe Ekle */

/* Aski Ekle */
function addNewHanger(_userId, _categoryId, _gardrobeId, _about, _city, _place, _newFileName, _myTags,_tagArray){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "addhanger", user_id: _userId, category_id: _categoryId, gardrobe_id: _gardrobeId, about: _about, city: _city, place: _place, newfilename: _newFileName, tags: _myTags,brands:_tagArray},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            hangerSuccessfullyAdded(data);
            // alert( "success" +data );
        }).fail(function(data) {
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
            hangerSuccessfullyAdded(data);
            // alert( "success" +data );
        }).fail(function(data) {
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
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}
/* Takipçiler ve Takip Edilenler */

function updateUserInformation(_userId,_name, _surname, _password, _phoneNumber, _city, _about, _pictureId,_x,_y,_min_side,  _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "updateuser", user_id: _userId, name: _name, surname: _surname, pass: _password, phone: _phoneNumber, city: _city, about: _about, pic_id: _pictureId,x:_x,y:_y,min_side:_min_side},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
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
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}

function getTaggableFriends(_successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "getfellows", fellower_id: window.user[0].user_id},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            _successFunction(data);
            // alert( "success" +data );
        }).fail(function(data) {
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
            // alert( "error" +data );
        }).always(function(data) {
            // alert( "finished" + data);
        });
}



function deactivateAccount(_userId, _successFunction){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "deactivateaccount", user_id: _userId},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
        _successFunction(data);
        // alert( "success" +data );
    }).fail(function(data) {
        // alert( "error" +data );
    }).always(function(data) {
        // alert( "finished" + data);
    });
}

/* Send New Mention */
function reportHanger(_hangerId, _reporter_id, _hanger_owner_id,_comment){

    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation: "reporthanger", hanger_id:_hangerId, comment:_comment, reporter_id:_reporter_id, hanger_owner_id:_hanger_owner_id},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
            showStatusPopup("Askıyı rapor ettiniz","success","")
        // alert( "success" +data );
    }).fail(function(data) {
        // alert( "error" +data );
    }).always(function(data) {
        // alert( "finished" + data);
    });
}

function loginWithFacebook(_fbid, _mail, _name, _surname, _successFunction, _failFunction){
    debugger
    $.ajax({
        url: "src/login.php",
        type: "GET",
        data:{operation: "loginbyfacebook", fbid:_fbid, mail:_mail, name:_name, surname:_surname},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
        debugger
        _successFunction(data);
        // alert( "success" +data );
    }).fail(function(data) {
        _failFunction(data);
        debugger
        // alert( "error" +data );
    }).always(function(data) {
        // alert( "finished" + data);
    });
}

function loginWithTwitter(_twid, _successFunction, _failFunction){
    debugger
    $.ajax({
        url: "src/login.php",
        type: "GET",
        data:{operation: "loginbytwitter", twid:_twid},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
        debugger
        _successFunction(data);
        // alert( "success" +data );
    }).fail(function(data) {
        _failFunction(data);
        debugger
        // alert( "error" +data );
    }).always(function(data) {
        // alert( "finished" + data);
    });
}



function sendPasswordEmail(_mail){
    $.ajax({
        url: "src/sendmail.php",
        type: "GET",
        data:{mail:_mail},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {

        _successFunction(data);
        // alert( "success" +data );
    }).fail(function(data) {
        _failFunction(data);
        debugger
        // alert( "error" +data );
    }).always(function(data) {
        // alert( "finished" + data);
    });
}

function updateCategory(category_id,category_order){
    $.ajax({
        url: "src/main.php",
        type: "GET",
        data:{operation:"updatecategoryorder", category_id:category_id,category_order:category_order},
        dataType:"json",
        cache: false,
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {

        _successFunction(data);
        // alert( "success" +data );
    }).fail(function(data) {
        _failFunction(data);
        debugger
        // alert( "error" +data );
    }).always(function(data) {
        // alert( "finished" + data);
    });
}
/* Send New Mention */

