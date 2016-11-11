package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DataBase.DatabaseC;
import java.sql.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

if(session.getAttribute("uid")== null)
{
out.println("Invalid Session");
out.println("Please Login");
out.println("<script>parent.location.href='index.html'</script>");

}

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"EN\" lang=\"EN\" dir=\"ltr\">\r\n");
      out.write("<head profile=\"http://gmpg.org/xfn/11\">\r\n");
      out.write("<title>OPM</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("<meta http-equiv=\"imagetoolbar\" content=\"no\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"styles/layout.css\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery-1.4.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery-photostack.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery-coin-slider.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery-ui-1.8.12.custom.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("\r\n");
      out.write("\t$(\".pane:even\").addClass(\"alt\");\r\n");
      out.write("\r\n");
      out.write("\t$(\".pane .btn-delete\").click(function(){\r\n");
      out.write("\t\talert(\"This comment will be deleted!\");\r\n");
      out.write("\r\n");
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
      out.write("\t$(\".pane .btn-spam\").click(function(){\r\n");
      out.write("\t\t$(this).parents(\".pane\").animate({ backgroundColor: \"#fbc7c7\" }, \"fast\")\r\n");
      out.write("\t\t.animate({ opacity: \"hide\" }, \"slow\")\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(document).ready(function () {\r\n");
      out.write("    $('#portfolioslider').coinslider({\r\n");
      out.write("        width: 480,\r\n");
      out.write("        height: 280,\r\n");
      out.write("        navigation: false,\r\n");
      out.write("        links: false,\r\n");
      out.write("        hoverPause: true\r\n");
      out.write("    });\r\n");
      out.write("    $(\"#tabcontainer\").tabs({\r\n");
      out.write("        event: \"click\"\r\n");
      out.write("    });\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("#Layer1 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:0px;\r\n");
      out.write("\ttop:0px;\r\n");
      out.write("\twidth:15px;\r\n");
      out.write("\theight:201px;\r\n");
      out.write("\tz-index:1001;\r\n");
      out.write("}\r\n");
      out.write("#Layer2 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:25px;\r\n");
      out.write("\ttop:66px;\r\n");
      out.write("\twidth:778px;\r\n");
      out.write("\theight:404px;\r\n");
      out.write("\tz-index:1001;\r\n");
      out.write("}\r\n");
      out.write("#Layer3 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:818px;\r\n");
      out.write("\ttop:13px;\r\n");
      out.write("\twidth:182px;\r\n");
      out.write("\theight:259px;\r\n");
      out.write("\tz-index:1002;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".pane {\r\n");
      out.write("\r\n");
      out.write("\tpadding: 5px 5px 5px;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tborder-top: solid 1px #ccc;\r\n");
      out.write("\tbackground-color:#999999;\r\n");
      out.write("}\r\n");
      out.write(".alt {\r\n");
      out.write("\tbackground: #f5f4f4;\r\n");
      out.write("}\r\n");
      out.write(".spam {\r\n");
      out.write("\tcolor: #999999;\r\n");
      out.write("}\r\n");
      out.write("#Layer4 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:823px;\r\n");
      out.write("\ttop:280px;\r\n");
      out.write("\twidth:179px;\r\n");
      out.write("\theight:165px;\r\n");
      out.write("\tz-index:1003;\r\n");
      out.write("}\r\n");
      out.write("#Layer5 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:873px;\r\n");
      out.write("\ttop:458px;\r\n");
      out.write("\twidth:106px;\r\n");
      out.write("\theight:107px;\r\n");
      out.write("\tz-index:1004;\r\n");
      out.write("}\r\n");
      out.write("#Layer6 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:485px;\r\n");
      out.write("\ttop:10px;\r\n");
      out.write("\twidth:277px;\r\n");
      out.write("\theight:41px;\r\n");
      out.write("\tz-index:1005;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body id=\"top\">\r\n");
      out.write("<div id=\"Layer2\">\r\n");
      out.write("  <div id=\"slider\">\r\n");
      out.write("    <ul id=\"categories\" name=\"categories\">\r\n");
      out.write("     ");

     try{
      Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String uid=(String)hs.getAttribute("uid");
         //out.println("connection established");
         ResultSet rs=st.executeQuery("select * from  photos");
         String pname;
         
     while(rs.next())
         {
String str=rs.getString(3).trim();
        
      out.write("\r\n");
      out.write("\t  <li class=\"category\">\r\n");
      out.write("        <h2>");
      out.print( str );
      out.write("</h2>\r\n");
      out.write(" \r\n");
      out.write("        <a href=\"photo.jsp?pname=");
      out.print( str );
      out.write("\" >\r\n");
      out.write("            <img src=\"");
      out.print( rs.getString(5).trim());
      out.write("\" alt=\"\" /></a>\r\n");
      out.write("        <p></p>\r\n");
      out.write("        <div class=\"pane\">\r\n");
      out.write("          <h3>Description </h3>\r\n");
      out.write("          <p>");
      out.print( rs.getString(4).trim());
      out.write("</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <p></p>\r\n");
      out.write("        <p class=\"readmore\"><a href='photo.jsp?pname=");
      out.print( str );
      out.write("'>Read More &raquo;</a></p>\r\n");
      out.write("      </li>\r\n");
      out.write("      \r\n");
      out.write("          ");
 } 
      out.write("\r\n");
      out.write("    </ul>\r\n");
      out.write("    <a class=\"prev disabled\"></a> <a class=\"next disabled\"></a>\r\n");
      out.write("<div style=\"clear:both\"></div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"Layer3\" align=\"center\">\r\n");
      out.write("  <h3> Notifications</h3><center>\r\n");
      out.write("  <marquee behavior=\"scroll\" direction=\"up\" onmouseover=\"this.stop();\" onmouseout=\"this.start();\"><center>\r\n");
      out.write("<img src=\"images/girl.gif\" width=\"87\" height=\"86\" alt=\"smile\" />\r\n");
      out.write("<p>uploaded a New Image</p>\r\n");
      out.write("<img src=\"images/485797bab702e_70632n.jpg\" width=\"87\" height=\"86\" alt=\"smile\" />\r\n");
      out.write("<p>commented on Aditya's New photo </p>\r\n");
      out.write("<img src=\"images/140.jpg\" width=\"87\" height=\"86\" alt=\"smile\" />\r\n");
      out.write("<p>commented on Aditya's New photo </p>\r\n");
      out.write("\r\n");
      out.write(" </center> </marquee></center>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<!-- ####################################################################################################### -->\r\n");
      out.write("\r\n");
      out.write("<div id=\"Layer4\">\r\n");
      out.write("  <form action=\"UploadFile.jsp\" method=\"post\" enctype=\"multipart/form-data\" name=\"form1\" class=\"style1\" id=\"form1\">\r\n");
      out.write("    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> upload picture </strong><br/>\r\n");
      out.write("\r\n");
      out.write("\tTitle  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n");
      out.write("\t<input type=\"text\" name=\"1\"  id=\"1\" required=\"required\"/>\r\n");
      out.write("\tDescription\r\n");
      out.write("    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n");
      out.write("    <textarea name=\"2\" id=\"2\" ></textarea>\r\n");
      out.write("    <input type=\"file\" name=\"file\" />\r\n");
      out.write("    <input name=\"submit\" type=\"submit\" value=\"upload\" />\r\n");
      out.write("    <input name=\"Reset\" type=\"reset\" class=\"name\" id=\"reset\" value=\"Reset\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</form></div>\r\n");
      out.write("<div id=\"Layer5\">\r\n");
      out.write("  <applet code=\"Clock3D.class\" width=\"100\" height=\"100\" align=\"absmiddle\">\r\n");
      out.write("    <param name=\"fps\" value=\"18\" />\r\n");
      out.write("    <param name=\"a1\" value=\"12500\" />\r\n");
      out.write("    <param name=\"pixd\" value=\"29\" />\r\n");
      out.write("    <param name=\"pixangle\" value=\"5\" />\r\n");
      out.write("    <param name=\"radius\" value=\"26\" />\r\n");
      out.write("    <param name=\"roty\" value=\"-4\" />\r\n");
      out.write("    <param name=\"rotx\" value=\"0\" />\r\n");
      out.write("    <param name=\"rotz\" value=\"0.401\" />\r\n");
      out.write("    <param name=\"irotx\" value=\"0\" />\r\n");
      out.write("    <param name=\"iroty\" value=\"0\" />\r\n");
      out.write("    <param name=\"irotz\" value=\"00\" />\r\n");
      out.write("    <param name=\"style\" value=\"1\" />\r\n");
      out.write("    <param name=\"color\" value=\"#00FF66\" />\r\n");
      out.write("    <param name=\"bgcolor\" value=\"#161616\" />\r\n");
      out.write("    <param name=\"12hour\" value=\"0\" />\r\n");
      out.write("  </applet>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- ####################################################################################################### -->\r\n");
      out.write("\r\n");
      out.write("<!-- ####################################################################################################### -->\r\n");


         
         out.print("Welcome    "+uid+"  ....!");
 }
    catch(Exception e)
        {

        }
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
