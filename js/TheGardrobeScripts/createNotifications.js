/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 24.04.2014
 * Time: 17:08
 * To change this template use File | Settings | File Templates.
 */

var  notificationsContainer = $("#notifications_content");

createNotifications = function(data){
    debugger
    var notification = '<div class="notifications">' +
                        '<div class="notification_owner_picture">' +
                            '<img src="images/dummy_images/profil.jpg"/>' +
                        '</div>' +
                        '<div class="notification_body">' +
                            '<span class="notification_content">Tunç Akın seni takip etmeye başladı</span>' +
                        '</div>' +
                    '</div>'

    for(i=0;i<100;i++){
        notificationsContainer.append(notification);
    }

    notificationsContainer.mCustomScrollbar();
}
