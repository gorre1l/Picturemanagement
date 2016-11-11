package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DataBase.DatabaseC;
import java.sql.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.io.output.*;

public final class UploadFile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");

Connection con=DatabaseC.getConnection();
 Statement st = con.createStatement();
 HttpSession hs=request.getSession(true);
 String eid=(String)hs.getAttribute("uid");
  String picname=request.getParameter("photo_id");
 String picdesc=request.getParameter("description");
 
 

// String eid="gupta@gmail.com";

 //String eid=request.getParameter("user_id");

File file ;
int maxFileSize = 5000 * 1024;
int maxMemSize = 5000 * 1024;
ServletContext context = pageContext.getServletContext();

String filePath = getServletContext().getRealPath(context.getInitParameter("file-upload"))+"\\";
String f[] = filePath.split("build");
filePath=f[0]+f[1].substring(1);
// Verify the content type
String contentType = request.getContentType();
if ((contentType.indexOf("multipart/form-data") >= 0)) {
DiskFileItemFactory factory = new DiskFileItemFactory();
// maximum size that will be stored in memory
factory.setSizeThreshold(maxMemSize);
// Location to save data that is larger than maxMemSize.
factory.setRepository(new File("c:\\temp"));
// Create a new file upload handler
ServletFileUpload upload = new ServletFileUpload(factory);
// maximum file size to be uploaded.
upload.setSizeMax( maxFileSize );
try{
// Parse the request to get file items.
List fileItems = upload.parseRequest(request);
// Process the uploaded file items
Iterator i = fileItems.iterator();

while ( i.hasNext () )
{
FileItem fi = (FileItem)i.next();
if ( !fi.isFormField () )
{
// Get the uploaded file parameters
String fieldName = fi.getFieldName();
String fileName = fi.getName();
boolean isInMemory = fi.isInMemory();
long sizeInBytes = fi.getSize();
// Write the file

if( fileName.lastIndexOf("\\") >= 0 ){
file = new File( filePath +
fileName.substring( fileName.lastIndexOf("\\"))) ;
}else{
file = new File( filePath +
fileName.substring(fileName.lastIndexOf("\\")+1)) ;
}
String path1=filePath+ fileName;
file = new File(path1);
//file= getServletContext().toString() + file;
//out.println("before write");
fi.write( file ) ;

String newfile="data_pics/"+fileName;
//out.println("after write");

//out.println("Uploaded Filename: " + filePath +fileName + "<br>");  --- this is used for showing the path of the uploaded photo */
//out.println(path1);



 out.println(eid+","+path1);



 out.println(newfile+picname+picdesc);

String query="insert into photos values('"+eid+"','no','"+picname+"','"+picdesc+"','"+newfile+"','1');";
 int row=st.executeUpdate(query);
 if(row != 0)
     {
     response.sendRedirect("home.jsp");
     }
 else
    {
      response.sendRedirect("un_success.html");
    }

}
}
}catch(Exception ex) {
out.println(ex);
}
}

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
