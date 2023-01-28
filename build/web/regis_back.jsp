<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@page import="javax.swing.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registered Successfully</title>
        <link rel="stylesheet" type="text/css" href="TODO.css">

    </head>
    <body>
        <%!
            PreparedStatement pst,_pst;
            ResultSet rs;
            Connection con;
            String _uname, _pw,query,_query;
        %>
        <%
            try{

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auc_sem6","root","");
                
                _uname = request.getParameter("_username");
                _pw = request.getParameter("_password");
                query = "select * from table2 where username = ?";
                pst = con.prepareStatement(query);
                pst.setString(1,_uname);
                rs = pst.executeQuery();
                if(rs.next()){
                    out.write("Username already exists. Try a different name.");
                    rs.close();
                    pst.close();      
                }
                
                else{
                    query = "INSERT INTO `table2` (`username`, `password`, `task1`, `task2`, `task3`, `task4`) VALUES ('"+_uname+"', '"+_pw+"', '', '', '', '');" ;
                    pst = con.prepareStatement(query);
                    pst.executeUpdate(query);
                    _query = "INSERT INTO `table1` (`username`, `task1`, `task2`, `task3`, `task4`) VALUES ('"+_uname+"', '', '', '', '');" ;
                    _pst = con.prepareStatement(_query);
                    _pst.executeUpdate(_query);
                    out.write("Registered Successfully");
                    
                }
                
            }
            catch(Exception e){
                out.write("Error: "+e);
                e.printStackTrace();
            }     
        %>
        <h2><a href ="http://localhost:8080/jsp_project/login_regis.jsp">Home Page</a></h2>
    </body>
</html>
