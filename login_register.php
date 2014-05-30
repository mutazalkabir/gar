<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>TheGardrobe</title>

    <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700&subset=latin,greek-ext,latin-ext,greek' rel='stylesheet' type='text/css'>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css" />
    <link href="css/flaticon.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/helpers/browser_selector.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mCustomScrollbar.js"></script>
    <script type="text/javascript" src="js/helpers/jquery.mousewheel.js"></script>

    <!-- TheGardrobe Component Scripts -->
    <script type="text/javascript" src="js/data_connector.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/dateConvertor.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/popupManager.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMainPageFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createMyFeed.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/newsletter.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/login_register.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createNewAski.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createPersonalMessages.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/createNotifications.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/messaging.js"></script>
    <script type="text/javascript" src="js/TheGardrobeScripts/gardrobeKaristir.js"></script>
    <script type="text/javascript" src="js/helpers/domGenerator.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <!-- TheGardrobe Component Scripts -->
</head>

<body>
<div id="body_background_image">

</div>
<div id="login_contents">
	<img class="logo" src="images/logo.png" alt="The Gardrobe Logo">
	<div id="video_container">
		<iframe src="//player.vimeo.com/video/42447133" width="623" height="350" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	</div>
	<div id="login_form_container">
	    <span class="register_title">Lütfen Giriş Yapınız</span>
	    <input name="login_email" id="login_e_mail" placeholder="E-Posta Adresiniz" type="text">
	    <input name="login_password" id="login_password" placeholder="Şifreniz" type="password">
	    <button id="login_button" type="submit">Giriş</button>
        <span id="forgot_password_link">Şifremi Unuttum :(</span>
        <span id="still_not_a_member"><span id="show_register_form">Hemen Kayıt Olun</span></span>

	    <div class="social_buttons_holder">
            <a class="social_login_buttons btn-twitter">
                <i class="fa fa-twitter"></i>Twitter
            </a>
            <a class="social_login_buttons btn-facebook">
                <i class="fa fa-facebook"></i>Facebook
            </a>
            <a class="social_login_buttons btn-google-plus">
                <i class="fa fa-google-plus"></i>Google +
            </a>
	    </div>
	</div>

    <div id="register_form_container">
        <span class="register_title">Kayıt için gerekli bilgileri giriniz</span>
        <input name="register_name" id="register_e_mail" placeholder="E-Posta Adresiniz" type="text">

        <input name="register_name" id="register_name" placeholder="Ad" type="text">
        <input name="register_surname" id="register_surname" placeholder="Soyad" type="text">

        <input name="register_password" id="register_password" placeholder="Şifreniz" type="password">
        <input name="register_password_repeat" id="register_password_repeat" placeholder="Şifre Tekrar" type="password">

        <input type="radio"  gender="women"  name="gender" id="g1"/><label class="label" for="g1">Kadın</label>
        <input type="radio"  gender="male"  name="gender" id="g2"/><label class="label" for="g2">Erkek</label>

        <select id="birth_day">
            <option selected>Gün</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
            <option>11</option>
            <option>12</option>
            <option>13</option>
            <option>14</option>
            <option>15</option>
            <option>16</option>
            <option>17</option>
            <option>18</option>
            <option>19</option>
            <option>20</option>
            <option>21</option>
            <option>22</option>
            <option>23</option>
            <option>24</option>
            <option>25</option>
            <option>26</option>
            <option>27</option>
            <option>28</option>
            <option>29</option>
            <option>30</option>
            <option>31</option>
        </select>
        <select id="birth_month">
            <option selected>Ay</option>
            <option>Ocak</option>
            <option>Şubat</option>
            <option>Mart</option>
            <option>Nisan</option>
            <option>Mayıs</option>
            <option>Haziran</option>
            <option>Temmuz</option>
            <option>Ağustos</option>
            <option>Eylül</option>
            <option>Ekim</option>
            <option>Kasım</option>
            <option>Aralık</option>
        </select>
        <select id="birth_year">
            <option selected>Yıl</option>
            <option>1996</option>
            <option>1995</option>
            <option>1994</option>
            <option>1993</option>
            <option>1992</option>
            <option>1991</option>
            <option>1990</option>
            <option>1989</option>
            <option>1988</option>
            <option>1987</option>
            <option>1986</option>
            <option>1985</option>
            <option>1984</option>
            <option>1983</option>
            <option>1982</option>
            <option>1981</option>
            <option>1980</option>
            <option>1979</option>
        </select>

        <button id="register_button" type="submit">Kayıt Ol</button>

        <div class="return_to_login_button register_form">
            <i class="fa fa-reply"></i>
            <span>Giriş</span>
        </div>
    </div>

	<div id="successfully_registered_container">
	    <i class="fa fa-check"></i>
	    <span class="register_title success">Başarıyla Kayıt Oldunuz! E-Posta adresinize kayıt link'i gönderilmiştir.</span>

	    <div class="social_buttons_holder">
	        <a target="_blank" href="https://www.facebook.com/TheGardrobe"><span class='symbol facebook'>circlefacebook</span></a>
	        <a target="_blank" href="https://www.twitter.com/TheGardrobe"><span class='symbol twitter'>circletwitterbird</span></a>
	        <a target="_blank" href="https://plus.google.com/107522711390698172759/"><span class='symbol googleplus'>circlegoogleplus</span></a>
	        <a target="_blank" href="http://www.instagram.com/TheGardrobe"><span class='symbol instagram'>circleinstagram</span></a>
	    </div>

        <div class="return_to_login_button successfully_registered">
            <i class="fa fa-reply"></i>
            <span>Giriş</span>
        </div>
	</div>

    <div id="successfully_logged_in">
        <i class="fa fa-check"></i>
        <span class="register_title success">Başarıyla Giriş Yaptınız! Ana sayfaya yönlendiriliyorsunuz.</span>
    </div>

    <div id="wrong_username_password">
        <i class="fa fa-meh-o"></i>
        <span class="register_title success">Hatalı Kullanıcı Adı veya Şifre</span>

        <div class="return_to_login_button wrong_user">
            <i class="fa fa-reply"></i>
            <span>Giriş</span>
        </div>
    </div>

    <div id="forgot_password">
        <span class="register_title">Kayıt Olurken Kullandığınız E-Posta Adresinizi Giriniz</span>
        <input name="reset_password_email" id="reset_password_email" placeholder="E-Posta Adresiniz" type="text">
        <button id="reset_password_button" type="submit">Şifremi Gönder</button>
        <div class="return_to_login_button forgot_password_form">
            <i class="fa fa-reply"></i>
            <span>Giriş</span>
        </div>
    </div>

    <div id="successfully_reset_container">
        <i class="fa fa-check"></i>
        <span class="register_title success">Şifre Başarıyla Sıfırlandı! E-Posta adresinize şifre sıfırlama link'i gönderilmiştir.</span>

        <div class="social_buttons_holder">
            <a target="_blank" href="https://www.facebook.com/TheGardrobe"><span class='symbol facebook'>circlefacebook</span></a>
            <a target="_blank" href="https://www.twitter.com/TheGardrobe"><span class='symbol twitter'>circletwitterbird</span></a>
            <a target="_blank" href="https://plus.google.com/107522711390698172759/"><span class='symbol googleplus'>circlegoogleplus</span></a>
            <a target="_blank" href="http://www.instagram.com/TheGardrobe"><span class='symbol instagram'>circleinstagram</span></a>
        </div>

        <div class="return_to_login_button successfully_reset">
            <i class="fa fa-reply"></i>
            <span>Giriş</span>
        </div>
    </div>    
</div>
</body>
</html>
