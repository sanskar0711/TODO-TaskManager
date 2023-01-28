<%@ page import = "java.sql.*" %>
<%@page import="javax.swing.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome User </title>
         <link rel="stylesheet" type="text/css" href="TODO.css">
    </head>     
    <body>
        <div class="login"> 
        <%! String _uname; %>
        <% _uname = (String)session.getAttribute("name");%>
        <h2><%out.write("Welcome: "+_uname);%></h2>
        <form name = "tasks_form" action="http://localhost:8080/jsp_project/login_added.jsp">
        <input type="text" name="t1" placeholder="Task 1">   <select name="percent1">
                                                             <option>25%</option>
                                                             <option>50%</option>
                                                             <option>75%</option>
                                                             <option>100%</option>
                                                             </select><br><br>
        <input type="text" name="t2" placeholder="Task 2">   <select name="percent2">
                                                             <option>25%</option>
                                                             <option>50%</option>
                                                             <option>75%</option>
                                                             <option>100%</option>
                                                             </select><br><br>
        <input type="text" name="t3" placeholder="Task 3">   <select name="percent3">
                                                             <option>25%</option>
                                                             <option>50%</option>
                                                             <option>75%</option>
                                                             <option>100%</option>
                                                             </select><br><br>
        <input type="text" name="t4" placeholder="Task 4">   <select name="percent4">
                                                             <option>25%</option>
                                                             <option>50%</option>
                                                             <option>75%</option>
                                                             <option>100%</option>
                                                             </select><br><br>
        <button type="submit">Submit</button>
        </form>
        <% session.setAttribute("name",_uname);%>

        <h4><a href ="http://localhost:8080/jsp_project/login_clear.jsp">Clear Tasks</a></h4><br>
        <h4><a href ="http://localhost:8080/jsp_project/login_fetch.jsp">Show Tasks</a></h4><br>

        <h4><a href ="http://localhost:8080/jsp_project/login_regis.jsp">Home</a></h4>
    </body>
</html>
