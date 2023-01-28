<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@page import="javax.swing.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            String _uname, _pw, query;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auc_sem6","root","");
                
                _uname = request.getParameter("username");
                _pw = request.getParameter("password");
                query = "select * from table2 where username = ? AND password = ?";
                pst = con.prepareStatement(query);
                pst.setString(1,_uname);
                pst.setString(2,_pw);
                rs = pst.executeQuery();
                if(rs.next()){
                    response.sendRedirect("http://localhost:8080/jsp_project/login_back.jsp");
                    session.setAttribute("name",_uname);
                    session.setAttribute("pass",_pw);
                }
                else{
                        out.write("Get yourself registered first to login.");
                        
                        rs.close();
                        pst.close();
                    }
            }
            catch(Exception e){
                out.write("Error: "+e);
            }
        %>
    </body>
</html>
