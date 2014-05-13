/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 21.04.2014
 * Time: 11:09
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){
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

    $("#login_button").on("click",function(){
        login("mutaz_alkabir@hotmail.com","ddd")
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
                // Login Operasyonu başarılı mı değil mi?
                if(1 == 1){
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
                else{
                    $("#login_form_container").addClass("fadeOutLeft animatedSlow");
                    setTimeout(function(){
                        $("#successfully_logged_in").css("display","block");
                        $("#successfully_logged_in").addClass("fadeInRight animatedSlow");
                    },150);
                }
            }
        }
    });

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

    $("#register_button").on("click",function(){
        register("mmm@gmail.com","içö","IÖçüğĞÜ","ddd","m","06/10/1982");
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
                debugger
            alert(data);

            // alert( "success" +data );
        }).fail(function(data) {

            // alert( "error" +data );
        }).always(function(data) {

            // alert( "finished" + data);
        });
    }
});
