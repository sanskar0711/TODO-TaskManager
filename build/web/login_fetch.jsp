<%@ page import = "java.sql.*" %>
<%@page import="javax.swing.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Tasks</title>
        <link rel="stylesheet" type="text/css" href="TODO.css">
        <%!               
            public String img(String p1)           
            {   
            switch(p1){
                case ("25%"):
                    return("img/one.png");
                case ("50%"):
                    return("img/two.png");
                case ("75%"):
                    return("img/three.png");    
                case ("100%"):
                    return("img/four.png");  
                default:
                    return("JOKER");
                }
            } 
        %>
    </head>
    <body>
          <div class="login"> 
        <%!
            PreparedStatement pst,_pst;
            Connection con;
            ResultSet rs,_rs;
            String _uname,query,_query,t1,t2,t3,t4,p1,p2,p3,p4;    
        %>
        <% p1 = "25%"; p2 = "25%"; p3 = "25%"; p4 = "25%"; %>
        
        <% _uname = (String)session.getAttribute("name"); %>
        
        <h1><%out.write("TODO of user: "+_uname);%></h1><br>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auc_sem6","root","");
                query = "SELECT * FROM `table2` WHERE username = '" +_uname+ "';";
                pst = con.prepareStatement(query); 
                rs = pst.executeQuery(query);
                rs.next();
                t1 = rs.getString("task1");
                t2 = rs.getString("task2");
                t3 = rs.getString("task3");
                t4 = rs.getString("task4");
                _query = "SELECT * FROM `table1` WHERE username = '" +_uname+ "';";
                _pst = con.prepareStatement(_query); 
                _rs = pst.executeQuery(_query);
                _rs.next();
                p1 = _rs.getString("task1");
                p2 = _rs.getString("task2");
                p3 = _rs.getString("task3");
                p4 = _rs.getString("task4");
            }
            catch(Exception e){
                out.write("Error: "+e);
                e.printStackTrace();
            }     
        %>
                
        <h1><%out.write("Task 1: "+t1);%></h1>
        <br/>
        <img src="<%out.write(img(p1)); %>" alt="alt"/><br> 
        
        <h1><%out.write("Task 2: "+t2);%></h1>
        <br/>
        <img src="<%out.write(img(p2)); %>" alt="alt"/><br>
        
        <h1><%out.write("Task 3: "+t3);%></h1>
        <br/>
        <img src="<%out.write(img(p3));%>" alt="alt"/> <br>
        
        <h1><%out.write("Task 4: "+t4);%></h1>
        <br/>
        <img src="<%out.write(img(p4)); %>" alt="alt"/><br>
        <br/>
        <h2><a href ="http://localhost:8080/jsp_project/login_back.jsp">Go Back</a></h2>
    </body>
</html>
