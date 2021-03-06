/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 21.04.2014
 * Time: 11:09
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){


    $(".btn-facebook").on("click",function(){
        debugger
        FBOBJECT.login(function(response) {
            // handle the response
            FBOBJECT.api('/me', function(response) {
                //var stringResponse=JSON.stringify(response)
                var jsonResponse=response;
                console.log(jsonResponse);
                if(response.status === 'connected')
                {
                    loginWithFacebook(jsonResponse.id,jsonResponse.email,jsonResponse.first_name,jsonResponse.last_name,
                        loginAndCreateCookie,
                        function(){})
                }

            });

        }, {
            scope: 'public_profile,email',
            return_scopes: true
        });
    });

    $.urlParam = function(name){
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results==null){
            return null;
        }
        else{
            return results[1] || 0;
        }
    }



    loginAndCreateCookie = function(userData){
        $("#login_form_container").addClass("fadeOutLeft animatedSlow");
        setTimeout(function(){
            $("#successfully_logged_in").css("display","block");
            $("#successfully_logged_in").addClass("fadeInRight animatedSlow");
        },150);
        window.user=userData;
        debugger
        createCookie("user", JSON.stringify(userData), 10);

        setTimeout(function(){
            window.location = "index.php";
        }, 2000);
    }


    if( decodeURIComponent($.urlParam('twid'))!="null")
    {
        loginWithTwitter($.urlParam('twid'),loginAndCreateCookie,function(){});

    }


        $(".btn-twitter").on("click",function(){
            debugger
           window.location="src/login-twitter.php";
        });

    $(".symbol").on("mouseenter",function(){
        $(this).addClass("bounce animatedSlow");
    });

    $(".symbol").on("mouseleave",function(){
        $(this).removeClass("bounce animatedSlow");
    });

    $("#forgot_password_link").on("click",function(){
        $("#login_form_container").addClass("fadeOutLeft animatedSlow");
        setTimeout(function(){
            $("#forgot_password").css("display","block");
            $("#forgot_password").addClass("fadeInRight animatedSlow");
        },150);

        setTimeout(function(){
            $("#login_form_container").removeClass("fadeOutLeft animatedSlow");
            $("#forgot_password").removeClass("fadeInRight animatedSlow");
            $("#login_form_container").css("display", "none");
        },1500);
    });

    $('input').on('keyup', function(e) {
        if (e.which == 13) {
            e.preventDefault();
            $("#login_button").trigger("click");
        }
    });

    $("#login_button").on("click",function(){
        var eMail = $("#login_e_mail").val();
        var atpos=eMail.indexOf("@");
        var dotpos=eMail.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=eMail.length){
            $("#login_e_mail").addClass("wrong_email");
            $("#login_form_container").addClass("shake animatedSlow");
            setTimeout(function(){
                $("#login_form_container").removeClass("shake animatedSlow");
            },1000);
            $("#login_e_mail").focus();
            setTimeout(function(){
                $("#login_e_mail, #login_password").removeClass("wrong_email");
            },2000);
            return false;
        }
        else{
            if($.trim($("#login_password").val()).length < 6 || $.trim($("#login_password").val()) == ""){
                $("#login_password").addClass("wrong_email");
                $("#login_form_container").addClass("shake animatedSlow");
                setTimeout(function(){
                    $("#login_e_mail, #login_password").removeClass("wrong_email");
                },2000);
                setTimeout(function(){
                    $("#login_form_container").removeClass("shake animatedSlow");
                },1000);
                return false;
            }
            else{
                login($("#login_e_mail").val(),$("#login_password").val());
            }
        }
    });


    successfullyConfirmed = function(data){

    }


    registerStatus = function(data){
        if(data == true || data == "true"){
            $("#register_form_container").addClass("fadeOutLeft animatedSlow");
            setTimeout(function(){
                $("#successfully_registered_container").css("display","block");
                $("#successfully_registered_container").addClass("fadeInRight animatedSlow");
            },150);

            setTimeout(function(){
                $("#successfully_registered_container").removeClass("fadeInRight animatedSlow");
                $("#register_form_container").removeClass("fadeOutLeft animatedSlow");
                $("#register_form_container").css("display","none");
            },1000);
            $("#successfully_registered_container .register_title").text("Başarıyla Kayıt Oldunuz! E-Posta adresinize kayıt link'i gönderilmiştir.");
            $("#successfully_registered_container .fa-check").css("display","block");
        }
        else{
            $("#register_form_container").addClass("fadeOutLeft animatedSlow");
            setTimeout(function(){
                $("#successfully_registered_container").css("display","block");
                $("#successfully_registered_container").addClass("fadeInRight animatedSlow");
            },150);

            setTimeout(function(){
                $("#successfully_registered_container").removeClass("fadeInRight animatedSlow");
                $("#register_form_container").removeClass("fadeOutLeft animatedSlow");
                $("#register_form_container").css("display","none");
            },1000);
            $("#successfully_registered_container .register_title").text("Üzgünüz, daha önce bu e-posta ile kayıt olmuşsunuz.");
            $("#successfully_registered_container .fa-check").css("display","none");
        }
    }

    $("#submit_confirmation_code").on("click",function(){
        debugger
       /* if($.trim($("#confirmation_code").val()).length < 16 || $.trim($("#confirmation_code").val()) == ""){
            $("#confirmation_code").addClass("wrong_email");
            $("#confirmation_form_container").addClass("shake animatedSlow");
            setTimeout(function(){
                $("#confirmation_code").removeClass("wrong_email");
            },2000);
            setTimeout(function(){
                $("#confirmation_form_container").removeClass("shake animatedSlow");
            },1000);
            return true;
        }
        else{
            confirmation($("#confirmation_code").val(), successfullyConfirmed);
            return true;
            //login($("#login_e_mail").val(),$("#login_password").val());
        }*/
        confirmation($("#confirmation_code").val(), successfullyConfirmed);
    });



    showWrongUserNameOrPassword = function(){
        $("#login_form_container").addClass("fadeOutLeft animatedSlow");
        setTimeout(function(){
            $("#wrong_username_password").css("display","block");
            $("#wrong_username_password").addClass("fadeInRight animatedSlow");
        },150);

        setTimeout(function(){
            $("#wrong_username_password").removeClass("fadeInRight animatedSlow");
            $("#login_form_container").removeClass("fadeOutLeft animatedSlow");
        },1000);
    }

/*
    function createCookie(name, value, days) {
        var expires;

        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toGMTString();
        } else {
            expires = "";
        }
        document.cookie = escape(name) + "=" + escape(value) + expires + "; path=/";
    }

    window.readCookie = function(name){
        var nameEQ = escape(name) + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) === ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) === 0) return unescape(c.substring(nameEQ.length, c.length));
        }
        return null;
    }

    */
/*    if(window.readCookie("user") == undefined || window.readCookie("user") == "undefined" || window.readCookie("user") == null){
        logoff();
    }*/
    window.user = JSON.parse(window.readCookie("user"));
    if(window.user == undefined){
        //showStatusPopup("Bu sayfayı görebilmek için giriş yapmanız gerekiyor","error",setTimeout(function(){window.location="login_register.php"},3000))
    }

    $("#show_register_form").on("click",function(){
        $("#login_form_container").addClass("fadeOutLeft animatedSlow");
        setTimeout(function(){
            $("#register_form_container").css("display","block");
            $("#register_form_container").addClass("fadeInRight animatedSlow");
        },150);

        setTimeout(function(){
            $("#login_form_container").removeClass("fadeOutLeft animatedSlow");
            $("#register_form_container").removeClass("fadeInRight animatedSlow");
            $("#login_form_container").css("display", "none");
        },1500);
    });

    $("input:radio[name=gender]").click(function() {
        window.gender= $(this).attr("gender");
    });

    $("#register_button").on("click",function(){
        var eMail = $("#register_e_mail").val();
        var atpos=eMail.indexOf("@");
        var dotpos=eMail.lastIndexOf(".");
        $("#register_form_container").removeClass("fadeInRight");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=eMail.length){
            $("#register_e_mail").addClass("wrong_email");
            $("#register_form_container").addClass("shake animatedSlow");
            setTimeout(function(){
                $("#register_form_container").removeClass("shake animatedSlow");
            },1000);
            $("#register_e_mail").focus();
            setTimeout(function(){
                $("#register_e_mail, #register_password, #register_password_repeat").removeClass("wrong_email");
            },2000);
            return false;
        }
        else{
            if($.trim($("#register_password").val()).length < 6 || $.trim($("#register_password").val()) == ""){
                $("#register_password").addClass("wrong_email");
                $("#register_form_container").addClass("shake animatedSlow");
                setTimeout(function(){
                    $("#register_e_mail, #register_password, #register_password_repeat").removeClass("wrong_email");
                },2000);
                setTimeout(function(){
                    $("#register_form_container").removeClass("shake animatedSlow");
                },1000);
                return false;
            }
            else if($.trim($("#register_password").val()) != $.trim($("#register_password_repeat").val())){
                $("#register_form_container").removeClass("shake animatedSlow");
                setTimeout(function(){
                    $("#register_form_container").addClass("shake animatedSlow");
                },200);
                $("#register_password_repeat").addClass("wrong_email");
                $("#register_password_repeat").focus();
                return false;
            }
            else{
                debugger
                register($("#register_e_mail").val(), $("#register_name").val(), $("#register_surname").val(), $("#register_password").val(), window.gender , convertToMiliseconds($("#birth_day").val(), $("#birth_month").val(), $("#birth_year").val()), registerStatus)
            }
        }
    });


    $("#reset_password_button").on("click",function(){
        var eMail = $("#reset_password_email").val();
        var atpos=eMail.indexOf("@");
        var dotpos=eMail.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=eMail.length){
            $("#reset_password_email").addClass("wrong_email");
            $("#forgot_password").addClass("shake animatedSlow");
            setTimeout(function(){
                $("#forgot_password").removeClass("shake animatedSlow");
            },1000);
            $("#reset_password_email").focus();
            setTimeout(function(){
                $("#reset_password_email").removeClass("wrong_email");
            },2000);
            return false;
        }
        else{
            sendPasswordEmail(eMail);
            $("#forgot_password").addClass("fadeOutLeft animatedSlow");
            setTimeout(function(){
                $("#successfully_reset_container").css("display","block");
                $("#successfully_reset_container").addClass("fadeInRight animatedSlow");
            },150);

            setTimeout(function(){
                $("#successfully_reset_container").removeClass("fadeInRight animatedSlow");
                $("#forgot_password").removeClass("fadeOutLeft animatedSlow");
                $("#forgot_password").css("display","none");
            },1000);
        }        
    });

    $(".register_form").on("click",function(){
        $(this).parent().addClass("fadeOutRight animatedSlow");
        setTimeout(function(){
            $("#register_form_container").removeClass("fadeOutRight animatedSlow");
            $("#register_form_container").css("display","none");
        },1000);

        $("#login_form_container").css("display","block");
        $("#login_form_container").addClass("fadeInLeft animatedSlow");

        setTimeout(function(){
            $("#login_form_container").removeClass("fadeInLeft animatedSlow");
        },1000);
    });

    $(".successfully_registered").on("click",function(){
        $(this).parent().addClass("fadeOutRight animatedSlow");
        setTimeout(function(){
            $("#register_form_container").removeClass("fadeOutRight animatedSlow");
            $("#register_form_container").css("display","none");
        },1000);

        $("#login_form_container").css("display","block");
        $("#login_form_container").addClass("fadeInLeft animatedSlow");

        setTimeout(function(){
            $("#login_form_container").removeClass("fadeInLeft animatedSlow");
            $("#successfully_registered_container").removeClass("fadeOutRight animatedSlow");
            $("#successfully_registered_container").css("display","none");
        },1000);
    });

    $(".successfully_reset").on("click",function(){
        $(this).parent().addClass("fadeOutRight animatedSlow");
        setTimeout(function(){
            $("#successfully_reset_container").removeClass("fadeOutRight animatedSlow");
            $("#successfully_reset_container").css("display","none");
        },1000);

        $("#login_form_container").css("display","block");
        $("#login_form_container").addClass("fadeInLeft animatedSlow");

        setTimeout(function(){
            $("#login_form_container").removeClass("fadeInLeft animatedSlow");
            $("#successfully_reset_container").removeClass("fadeOutRight animatedSlow");
            $("#successfully_reset_container").css("display","none");
        },1000);
    });

    $(".wrong_user").on("click",function(){
        $(this).parent().addClass("fadeOutRight animatedSlow");
/*        setTimeout(function(){
            $("#register_form_container").removeClass("fadeOutRight animatedSlow");
            $("#register_form_container").css("display","none");
        },1000);*/
        $("#login_form_container").removeClass("fadeOutLeft");

        $("#login_form_container").css("display","block");
        $("#login_form_container").addClass("fadeInLeft animatedSlow");

        setTimeout(function(){
            $("#login_form_container").removeClass("fadeInLeft animatedSlow");
            $("#wrong_username_password").removeClass("fadeOutRight animatedSlow");
            $("#wrong_username_password").css("display","none");
        },1000);
    });

    $(".forgot_password_form").on("click",function(){
        $(this).parent().addClass("fadeOutRight animatedSlow");
/*        setTimeout(function(){
            $("#register_form_container").removeClass("fadeOutRight animatedSlow");
            $("#register_form_container").css("display","none");
        },1000);*/
        $("#login_form_container").removeClass("fadeOutLeft");

        $("#login_form_container").css("display","block");
        $("#login_form_container").addClass("fadeInLeft animatedSlow");

        setTimeout(function(){
            $("#login_form_container").removeClass("fadeInLeft animatedSlow");
            $("#forgot_password").removeClass("fadeOutRight animatedSlow");
            $("#forgot_password").css("display","none");
        },1000);
    });
});
