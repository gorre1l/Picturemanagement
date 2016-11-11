package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import javax.imageio.*;
import java.awt.image.*;
import java.awt.color.*;

public final class effect_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=iso-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head><link rel=\"stylesheet\" href=\"styles/layout.css\" type=\"text/css\" />\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("<title>Untitled Document</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("#Layer1 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:3px;\r\n");
      out.write("\ttop:46px;\r\n");
      out.write("\twidth:348px;\r\n");
      out.write("\theight:401px;\r\n");
      out.write("\tz-index:1;\r\n");
      out.write("}\r\n");
      out.write("#Layer2 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:361px;\r\n");
      out.write("\ttop:45px;\r\n");
      out.write("\twidth:395px;\r\n");
      out.write("\theight:401px;\r\n");
      out.write("\tz-index:2;\r\n");
      out.write("}\r\n");
      out.write("#Layer3 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:13px;\r\n");
      out.write("\ttop:9px;\r\n");
      out.write("\twidth:333px;\r\n");
      out.write("\theight:24px;\r\n");
      out.write("\tz-index:3;\r\n");
      out.write("}\r\n");
      out.write("#Layer4 {\r\n");
      out.write("\tposition:absolute;\r\n");
      out.write("\tleft:369px;\r\n");
      out.write("\ttop:10px;\r\n");
      out.write("\twidth:350px;\r\n");
      out.write("\theight:28px;\r\n");
      out.write("\tz-index:4;\r\n");
      out.write("}\r\n");
      out.write(".style1 {\r\n");
      out.write("\tcolor: #FF0000;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("\tfont-size: 18px;\r\n");
      out.write("}\r\n");
      out.write(".style2 {\r\n");
      out.write("\tcolor: #0000FF;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("\tfont-size: 18px;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>");

   try {
   BufferedImage bi,bufferedImage;
   InputStream imageIn = this.getServletContext().getResourceAsStream("/images/saibaba.jpg");
   BufferedInputStream in = new BufferedInputStream(imageIn);
   bi = ImageIO.read(in);
   int w = bi.getWidth(null);
   int h = bi.getHeight(null);
   bufferedImage = new BufferedImage(w, h, BufferedImage.TYPE_BYTE_GRAY);  

   ColorSpace cs = ColorSpace.getInstance(ColorSpace.CS_GRAY);  
   ColorConvertOp op = new ColorConvertOp(cs, null);  
   bufferedImage = op.filter(bi, bufferedImage);  

  
 
  ServletOutputStream pw = response.getOutputStream();
  //ImageIO.write(bufferedImage,"JPEG",pw);

 


      out.write("\r\n");
      out.write("<div id=\"Layer1\"></div>\r\n");
      out.write("<div id=\"Layer2\">");
      out.print( ImageIO.write(bufferedImage,"JPEG",pw) );
      out.write("</div>\r\n");
      out.write("<div id=\"Layer3\"> \r\n");
      out.write("  <div align=\"center\" class=\"style1\">Before Effects </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"Layer4\">\r\n");
      out.write("  <div align=\"center\" class=\"style2\">After Effects </div>\r\n");
      out.write("</div> ");

   } catch(Exception e)
  {
     out.println(e);
  }
      out.write("\r\n");
      out.write("</body>\r\n");
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
