/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 15.04.2014
 * Time: 17:05
 * To change this template use File | Settings | File Templates.
 */
$(document).ready(function(){
    $(".symbol").on("mouseenter",function(){
        $(this).addClass("bounce animatedSlow");
    });

    $(".symbol").on("mouseleave",function(){
        $(this).removeClass("bounce animatedSlow");
    });

    $("#register").on("click",function(){
        var eMail = $("#e_mail").val();
        var atpos=eMail.indexOf("@");
        var dotpos=eMail.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=eMail.length){
            $("#e_mail").addClass("wrong_email");
            $("#newsletter_container").addClass("shake animatedSlow");
            setTimeout(function(){
                $("#newsletter_container").removeClass("shake animatedSlow");
            },1000);
            $("#e_mail").focus();
            setTimeout(function(){
                $("#e_mail").removeClass("wrong_email");
            },2000);
            return false;
        }
        else{
            setMailAddress($("#e_mail").val());
            $("#newsletter_container").addClass("fadeOutLeft animatedSlow");
            setTimeout(function(){
                $("#successful_container").css("display","block");
                $("#successful_container").addClass("fadeInRight animatedSlow");
            },150);
        }



        function setMailAddress(_email)
        {

            /*    $.post(                             //call the server
             "getemail.php",                     //At this url
             {

             mail: $("#e_mail").val()
             }                               //And send this data to it
             ).done(                             //And when it's done
             function(data)
             {
             debugger
             $('#fromAjax').html(data);  //Update here with the response
             }
             )
             .fail(function(data) {
             //alert( "error" +data );
             })
             .always(function(data) {

             // alert( "finished" + data);
             });*/

            $.ajax({
                url: "getemail.php",
                type: "POST",
                data:{ mail: _email},
                dataType:"text",
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
    });
});