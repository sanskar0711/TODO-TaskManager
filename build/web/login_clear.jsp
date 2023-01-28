<%@ page import = "java.sql.*" %>
<%@page import="javax.swing.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clear Tasks</title>
        <link rel="stylesheet" type="text/css" href="TODO.css">
    </head>
    <body>
        <%!
            PreparedStatement pst,_pst;
            Connection con;
            String _uname,query,_query;
        %>
        <%
            try{

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auc_sem6","root","");
                _uname = (String)session.getAttribute("name");
                query = "UPDATE `table2` SET `task1`='',`task2`='',`task3`='',`task4`='' WHERE username = '" +_uname+ "'";
                pst = con.prepareStatement(query);
                pst.executeUpdate(query);
                _query = "UPDATE `table1` SET `task1`='',`task2`='',`task3`='',`task4`='' WHERE username = '" +_uname+ "'";
                _pst = con.prepareStatement(_query);
                _pst.executeUpdate(_query);
            }
            catch(Exception e){
                out.write("Error: "+e);
                e.printStackTrace();
            }     
        %>
        <h3><%out.write("Tasks cleared user: "+_uname);%></h3>
        <h4><a href ="http://localhost:8080/jsp_project/login_back.jsp">Go Back</a></h4>
    </body>
</html>
