<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@page import="javax.swing.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TO DO</title>
        <link rel="stylesheet" type="text/css" href="TODO.css">
    </head>
    <body>
         <div class="login"> 
        <form name="loginform" action="http://localhost:8080/jsp_project/login_verify.jsp" method="post">
            <h1>Login</h1><br>
            Username: <input type="text" name="username"><br><br>
            Password: <input type="password" name="password"><br><br>
            <button type="submit">Login</button>
        </form><br><br>
        
        <form name="regisform" action="http://localhost:8080/jsp_project/regis_back.jsp" method="post">
            <h1>Registration</h1><br>
            Set Username: <input type="text" name="_username"><br><br>
            Set Password: <input type="password" name="_password"><br><br>
            <button type="submit">Register</button>
        </form>
        

    </body>
</html>
