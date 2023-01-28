package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.swing.*;

public final class login_005fback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String _uname; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Welcome User </title>\n");
      out.write("         <link rel=\"stylesheet\" type=\"text/css\" href=\"TODO.css\">\n");
      out.write("    </head>     \n");
      out.write("    <body>\n");
      out.write("        <div class=\"login\"> \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
 _uname = (String)session.getAttribute("name");
      out.write("\n");
      out.write("        <h2>");
out.write("Welcome: "+_uname);
      out.write("</h2>\n");
      out.write("        <form name = \"tasks_form\" action=\"http://localhost:8080/jsp_project/login_added.jsp\">\n");
      out.write("        <input type=\"text\" name=\"t1\" placeholder=\"Task 1\">   <select name=\"percent1\">\n");
      out.write("                                                             <option>25%</option>\n");
      out.write("                                                             <option>50%</option>\n");
      out.write("                                                             <option>75%</option>\n");
      out.write("                                                             <option>100%</option>\n");
      out.write("                                                             </select><br><br>\n");
      out.write("        <input type=\"text\" name=\"t2\" placeholder=\"Task 2\">   <select name=\"percent2\">\n");
      out.write("                                                             <option>25%</option>\n");
      out.write("                                                             <option>50%</option>\n");
      out.write("                                                             <option>75%</option>\n");
      out.write("                                                             <option>100%</option>\n");
      out.write("                                                             </select><br><br>\n");
      out.write("        <input type=\"text\" name=\"t3\" placeholder=\"Task 3\">   <select name=\"percent3\">\n");
      out.write("                                                             <option>25%</option>\n");
      out.write("                                                             <option>50%</option>\n");
      out.write("                                                             <option>75%</option>\n");
      out.write("                                                             <option>100%</option>\n");
      out.write("                                                             </select><br><br>\n");
      out.write("        <input type=\"text\" name=\"t4\" placeholder=\"Task 4\">   <select name=\"percent4\">\n");
      out.write("                                                             <option>25%</option>\n");
      out.write("                                                             <option>50%</option>\n");
      out.write("                                                             <option>75%</option>\n");
      out.write("                                                             <option>100%</option>\n");
      out.write("                                                             </select><br><br>\n");
      out.write("        <button type=\"submit\">Submit</button>\n");
      out.write("        </form>\n");
      out.write("        ");
 session.setAttribute("name",_uname);
      out.write("\n");
      out.write("\n");
      out.write("        <h4><a href =\"http://localhost:8080/jsp_project/login_clear.jsp\">Clear Tasks</a></h4><br>\n");
      out.write("        <h4><a href =\"http://localhost:8080/jsp_project/login_fetch.jsp\">Show Tasks</a></h4><br>\n");
      out.write("\n");
      out.write("        <h4><a href =\"http://localhost:8080/jsp_project/login_regis.jsp\">Home</a></h4>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
