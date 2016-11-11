<%--
    Document   : profile_pic
    Created on : Mar 11, 2013, 8:26:18 PM
    Author     : Aditya
--%>
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
Connection con=DatabaseC.getConnection();
 Statement st = con.createStatement();
 HttpSession hs=request.getSession(true);
 String eid=(String)hs.getAttribute("uid");
   String type=(String)request.getParameter("type");
 

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



 //out.println(type+newfile);
 
if(type.equals("blur"))
{
response.sendRedirect("effect1.jsp?picname="+newfile);
}

else if(type.equals("invert"))
{
response.sendRedirect("effect2.jsp?picname="+newfile);
}
else if(type.equals("darken"))
{
response.sendRedirect("effect3.jsp?picname="+newfile);
}
else if(type.equals("gray"))
{
response.sendRedirect("effect4.jsp?picname="+newfile);
}
else if(type.equals("flip"))
{
response.sendRedirect("effect5.jsp?picname="+newfile);
}
else if(type.equals("brightness"))
{
response.sendRedirect("effect6.jsp?picname="+newfile);
}
else if(type.equals("sharpen"))
{
response.sendRedirect("effect7.jsp?picname="+newfile);
}
else if(type.equals("emboss"))
{
response.sendRedirect("effect8.jsp?picname="+newfile);
}

}
}
}catch(Exception ex) {
out.println(ex);
}
}
%>