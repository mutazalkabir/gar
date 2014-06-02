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
        }
        else{
            var notification = $(GenerateDomElement({
                nodeType:"div",
                classNames:"notifications",
                attributes: {notification_type: data[i].notification_type},
                htmlContent:'<div class="notification_owner_picture">' +
                                '<img src="storage/user_images/avatars/'+ data[i].pic_id +'" />' +
                            '</div>' +
                            '<div class="notification_body">' +
                                '<span class="notification_content">'+ data[i].notifier_name +' seni takip etmeye başladı!</span>' +
                            '</div>'
            }));
            notificationsContainer.append(notification);
        }
    }
    notificationsContainer.mCustomScrollbar();
}
}
