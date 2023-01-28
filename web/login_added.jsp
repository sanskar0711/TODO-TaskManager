<%@ page import = "java.sql.*" %>
<%@page import="javax.swing.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tasks Added</title>
        <link rel="stylesheet" type="text/css" href="TODO.css">
    </head>
    <body>
        <%!
            PreparedStatement pst,_pst;
            Connection con;
            String _uname,query,_query,t1,t2,t3,t4,p1,p2,p3,p4;
        %>
        <%
            try{

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auc_sem6","root","");
                
                t1 = request.getParameter("t1");
                t2 = request.getParameter("t2");
                t3 = request.getParameter("t3");
                t4 = request.getParameter("t4");
                
                _uname = (String)session.getAttribute("name");
                session.setAttribute("name",_uname);
                query = "UPDATE `table2` SET `task1`='" +t1+ "',`task2`='" +t2+ "',`task3`='" +t3+ "',`task4`='" +t4+ "' WHERE username = '" +_uname+ "';";
                pst = con.prepareStatement(query);
                pst.executeUpdate(query);
                
                p1 = request.getParameter("percent1");
                p2 = request.getParameter("percent2");
                p3 = request.getParameter("percent3");
                p4 = request.getParameter("percent4");
                _query = "UPDATE `table1` SET `task1`='" +p1+ "',`task2`='" +p2+ "',`task3`='" +p3+ "',`task4`='" +p4+ "' WHERE username = '" +_uname+ "';";
                _pst = con.prepareStatement(_query);
                _pst.executeUpdate(_query);
            }
            catch(Exception e){
                out.write("Error: "+e);
                e.printStackTrace();
            }     
        %>
        <h3><%out.write("Tasks added user: "+_uname);%></h3>
        <h4><a href ="http://localhost:8080/jsp_project/login_back.jsp">Go Back</a></h4>
        
    </body>
</html>
