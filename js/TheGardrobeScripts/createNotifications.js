/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 24.04.2014
 * Time: 17:08
 * To change this template use File | Settings | File Templates.
 */

createNotifications = function(data){
    if(data)
    {
        sortMyData(data);

    var unreadNotificationCount = 0;
    var  notificationsContainer = $("#notifications_content");
    for(var i=0; i<data.length; i++){
        if(data[i].notification_type == "like"){
            var notification = $(GenerateDomElement({
                nodeType:"div",
                classNames:"notifications",
                attributes: {notification_type: data[i].notification_type, aski_id: data[i].notificated_item_id},
                htmlContent:'<div class="notification_owner_picture">' +
                                '<img src="storage/user_images/avatars/'+ data[i].pic_id +'" />' +
                            '</div>' +
                            '<div class="notification_body">' +
                                '<span class="notification_content">'+ data[i].notifier_name +' senin askını beğendi!</span>' +
                            '</div>'
            }));
            notificationsContainer.append(notification);
            if(data[i].seen == 0){
                unreadNotificationCount++;
            }
        }
        else if(data[i].notification_type == "comment"){
            var notification = $(GenerateDomElement({
                nodeType:"div",
                classNames:"notifications",
                attributes: {notification_type: data[i].notification_type, aski_id: data[i].notificated_item_id},
                htmlContent:'<div class="notification_owner_picture">' +
                                '<img src="storage/user_images/avatars/'+ data[i].pic_id +'" />' +
                            '</div>' +
                            '<div class="notification_body">' +
                                '<span class="notification_content">'+ data[i].notifier_name +' senin askına yorum yaptı!</span>' +
                            '</div>'
            }));
            notificationsContainer.append(notification);
            if(data[i].seen == 0){
                unreadNotificationCount++;
            }
        }
        else if(data[i].notification_type == "share"){
            var notification = $(GenerateDomElement({
                nodeType:"div",
                classNames:"notifications",
                attributes: {notification_type: data[i].notification_type, aski_id: data[i].notificated_item_id},
                htmlContent:'<div class="notification_owner_picture">' +
                                '<img src="storage/user_images/avatars/'+ data[i].pic_id +'" />' +
                            '</div>' +
                            '<div class="notification_body">' +
                                '<span class="notification_content">'+ data[i].notifier_name +' senin askını paylaştı!</span>' +
                            '</div>'
            }));
            notificationsContainer.append(notification);
            if(data[i].seen == 0){
                unreadNotificationCount++;
            }
        }
        else if(data[i].notification_type == "mention"){
            var notification = $(GenerateDomElement({
                nodeType:"div",
                classNames:"notifications",
                attributes: {notification_type: data[i].notification_type, aski_id: data[i].notificated_item_id},
                htmlContent:'<div class="notification_owner_picture">' +
                    '<img src="storage/user_images/avatars/'+ data[i].pic_id +'" />' +
                    '</div>' +
                    '<div class="notification_body">' +
                    '<span class="notification_content">'+ data[i].notifier_name +' bir askıda senden bahsetti!</span>' +
                    '</div>'
            }));
            notificationsContainer.append(notification);
            if(data[i].seen == 0){
                unreadNotificationCount++;
            }
        }
        else{
            var notification = $(GenerateDomElement({
                nodeType:"div",
                classNames:"notifications",
                attributes: {notification_type: data[i].notification_type, "user_id":data[i].notifier_id},
                htmlContent:'<div class="notification_owner_picture">' +
                                '<img src="storage/user_images/avatars/'+ data[i].pic_id +'" />' +
                            '</div>' +
                            '<div class="notification_body">' +
                                '<span class="notification_content">'+ data[i].notifier_name +' seni takip etmeye başladı!</span>' +
                            '</div>'
            }));
            notificationsContainer.append(notification);
            if(data[i].seen == 0){
                unreadNotificationCount++;
            }
        }
    }

    if(unreadNotificationCount > 0){
        $("#notifications").attr("hasNewItem","true");
        $("#notifications").find(".notification_count_holder").text(unreadNotificationCount);
    }
    else{
        $("#notifications").attr("hasNewItem","false");
    }

        $(".notifications").on("click",function(){
            if($(this).attr("notification_type") == "fellowship"){
                window.location = "profile_page.php?user_id="+$(this).attr("user_id");
            }
            else{
                getHangerById($(this).attr("aski_id"),showPopupFromFeed);
            }
        });

    $("#notifications").on("click",function(){
        setNotificationsRead(window.user[0].user_id);
    });
    notificationsContainer.mCustomScrollbar();
}
}

sortMyData = function(array){
    for(var i=0; i<array.length; i++){
        array.sort(function(first_element,second_element){
            return parseInt(second_element.notification_date) - parseInt(first_element.notification_date)
        } );
    }
}
