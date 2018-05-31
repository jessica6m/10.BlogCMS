<%-- 
    Document   : signup
    Created on : May 30, 2018, 9:06:47 PM
    Author     : Brandon Mathura
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Sign Up</title>
    </head>
    <body>
        <div class="account">
            <h3><b>E-mail</b></h3>
            <input type="text" placeholder="Enter E-mail Address" name="email" required>

            <h3><b>Username</b></h3>
            <input type="text" placeholder="Enter Username" name="uname" required>

            <h3><b>Password</b></h3>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <h3><b>Re-enter Password</b></h3>
            <input type="password" placeholder="Re-enter Password" name="psw2" required>
        </div>
        <button>Sign Up</button>
    </body>
</html>
