package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DataBase.DatabaseC;
import java.sql.*;

public final class photo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

if(session.getAttribute("uid")== null)
{
out.println("Invalid Session");
out.println("Please Login");
out.println("<script>parent.location.href='index.html'</script>");

}

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("<title>Untitled Document</title>\r\n");
      out.write("<link href=\"styles/layout.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"jquery.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"jquery.color.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("\r\n");
      out.write("\t$(\".pane:even\").addClass(\"alt\");\r\n");
      out.write("\r\n");
      out.write("\t$(\".pane .btn-delete\").click(function(){\r\n");
      out.write("\t\talert(\"This comment will be deleted!\");\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(this).parents(\".pane\").animate({ backgroundColor: \"#fbc7c7\" }, \"fast\")\r\n");
      out.write("\t\t.animate({ opacity: \"hide\" }, \"slow\")\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\t$(\".pane .btn-unapprove\").click(function(){\r\n");
      out.write("\t\t$(this).parents(\".pane\").animate({ backgroundColor: \"#fff568\" }, \"fast\")\r\n");
      out.write("\t\t.animate({ backgroundColor: \"#ffffff\" }, \"slow\")\r\n");
      out.write("\t\t.addClass(\"spam\")\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\t$(\".pane .btn-approve\").click(function(){\r\n");
      out.write("\t\t$(this).parents(\".pane\").animate({ backgroundColor: \"#dafda5\" }, \"fast\")\r\n");
      out.write("\t\t.animate({ backgroundColor: \"#ffffff\" }, \"slow\")\r\n");
      out.write("\t\t.removeClass(\"spam\")\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\t$(\".pane .btn-spam\").click(function(){\t\t\r\n");
      out.write("\t\t$(this).parents(\".pane\").animate({ backgroundColor: \"#fbc7c7\" }, \"fast\")\r\n");
      out.write("\t\t.animate({ opacity: \"hide\" }, \"slow\")\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("body {\r\n");
      out.write("\tmargin: 10px auto;\r\n");
      out.write("\twidth: 470px;\r\n");
      out.write("}\r\n");
      out.write("a, a:visited {\r\n");
      out.write("\tcolor: #000099;\r\n");
      out.write("}\r\n");
      out.write("a:hover {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("h3 {\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("\tpadding: 0 0 .3em;\r\n");
      out.write("}\r\n");
      out.write("p {\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("\tpadding: 0 0 1em;\r\n");
      out.write("}\r\n");
      out.write(".pane {\r\n");
      out.write("\tbackground: #ffffff;\r\n");
      out.write("\tpadding: 10px 20px 10px;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tborder-top: solid 1px #ccc;\r\n");
      out.write("}\r\n");
      out.write(".alt {\r\n");
      out.write("\tbackground: #f5f4f4;\r\n");
      out.write("}\r\n");
      out.write(".spam {\r\n");
      out.write("\tcolor: #999999;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("#Layer1 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:68px;\r\n");
      out.write("\ttop:6px;\r\n");
      out.write("\twidth:402px;\r\n");
      out.write("\theight:49px;\r\n");
      out.write("\tz-index:1;\r\n");
      out.write("}\r\n");
      out.write("#Layer2 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:39px;\r\n");
      out.write("\ttop:73px;\r\n");
      out.write("\twidth:400px;\r\n");
      out.write("\theight:317px;\r\n");
      out.write("\tz-index:2;\r\n");
      out.write("}\r\n");
      out.write("#Layer3 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:30px;\r\n");
      out.write("\ttop:401px;\r\n");
      out.write("\twidth:396px;\r\n");
      out.write("\theight:137px;\r\n");
      out.write("\tz-index:3;\r\n");
      out.write("}\r\n");
      out.write("#Layer4 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:479px;\r\n");
      out.write("\ttop:4px;\r\n");
      out.write("\twidth:408px;\r\n");
      out.write("\theight:536px;\r\n");
      out.write("\tz-index:4;\r\n");
      out.write("}\r\n");
      out.write("#Layer5 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:6px;\r\n");
      out.write("\ttop:7px;\r\n");
      out.write("\twidth:55px;\r\n");
      out.write("\theight:48px;\r\n");
      out.write("\tz-index:5;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");

         try{
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String pname1=request.getParameter("pname");
         ResultSet rs=st.executeQuery("select * from photos where photo_id='"+pname1+"'");
         if(rs.next())
         {
          
                   


      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"Layer1\">\r\n");
      out.write("    ");
      out.print( rs.getString(3) );
      out.write(" &nbsp;&nbsp;&nbsp; By ");
      out.print( rs.getString(1) );
      out.write("</div>\r\n");
      out.write("<div id=\"Layer2\"><img src=\"");
      out.print( rs.getString(5));
      out.write("\" width=\"400\" height=\"315\" /></div>\r\n");
      out.write("<div id=\"Layer3\">\r\n");
      out.write("  <p>Description </p>\r\n");
      out.write("  <p>");
      out.print( rs.getString(4));
      out.write("</p>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
 }
      out.write("\r\n");
      out.write("<div id=\"Layer4\">\r\n");
      out.write("  <p>\r\n");
      out.write("    <object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0\" width=\"202\" height=\"41\">\r\n");
      out.write("      <param name=\"movie\" value=\"text2.swf\" />\r\n");
      out.write("      <param name=\"quality\" value=\"high\" />\r\n");
      out.write("      <param name=\"bgcolor\" value=\"#161616\" />\r\n");
      out.write("      <embed src=\"text2.swf\" quality=\"high\" pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width=\"202\" height=\"41\" bgcolor=\"#161616\"></embed>\r\n");
      out.write("    </object>\r\n");
      out.write("  </p> ");

     ResultSet rs1=st.executeQuery("select * from comments where photo_id='"+pname1+"'");
  while(rs1.next())
  {
  
      out.write(" \r\n");
      out.write("  <div class=\"pane\">\r\n");
      out.write("\t<h3>");
      out.print( rs1.getString(2).trim() );
      out.write("</h3>\r\n");
      out.write("\t<p>");
      out.print( rs1.getString(3).trim() );
      out.write(".</p>\r\n");
      out.write("\t<p><a href=\"#\" class=\"btn-delete\">Delete</a> |  <a href=\"spam.jsp?pname=");
      out.print( pname1 );
      out.write("\" class=\"btn-spam\">Spam</a></p>\r\n");
      out.write("</div>\r\n");
      out.write("  \r\n");

   }

      out.write("\r\n");
      out.write("<form id=\"form1\" name=\"form1\" method=\"post\" action='comment.jsp?pname2=");
      out.print( pname1 );
      out.write("'>\r\n");
      out.write("<input  type=\"text\" id=\"comment\" name=\"comment\" value=\"Comment Here \" size=\"82\"  />\r\n");
      out.write("<input type=\"submit\"  />\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write(" </div>\r\n");
      out.write("<div id=\"Layer5\">\r\n");
      out.write("  <object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0\" width=\"39\" height=\"34\">\r\n");
      out.write("    <param name=\"BGCOLOR\" value=\"#161616\" />\r\n");
      out.write("    <param name=\"movie\" value=\"button3.swf\" />\r\n");
      out.write("    <param name=\"quality\" value=\"high\" />\r\n");
      out.write("    <embed src=\"button3.swf\" width=\"39\" height=\"34\" quality=\"high\" pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" bgcolor=\"#161616\" ></embed>\r\n");
      out.write("  </object>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");

}
         catch(Exception e)
                 {
          out.println(e);
             }

      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
