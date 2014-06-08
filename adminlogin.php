<?php
/**
 * Created by PhpStorm.
 * User: mutaz_alkabir
 * Date: 08.06.2014
 * Time: 14:42
 */
?>
<html>
<head>
    <title>Login</title>
</head>

<form action="src/adminlogin.php" method = "post">
    <label for="username">Username</label> <input type="username" id="usename" name="username"><br /><br />
    <label for="password">Password:</label> <input type="text" id="password" name="password"><br /><br />
    <button type = "submit">Login</button>
</form>
</html>