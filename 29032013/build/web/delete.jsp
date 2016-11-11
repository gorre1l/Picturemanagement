<%-- 
    Document   : delete
    Created on : Mar 23, 2013, 9:39:40 PM
    Author     : Aditya
--%>
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
if(session.getAttribute("uid")== null)
{
out.println("Invalid Session");
out.println("Please Login");
out.println("<script>parent.location.href='index.html'</script>");

}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
try{
       Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
 String desc=(String)request.getAttribute("desc");

    // out.println(desc);
       int row=st.executeUpdate("delete  from posts where description='"+desc+"'");
      // out.print(row);
       if(row!=0)
           {
            response.sendRedirect("news.jsp");
           }
}
 catch(Exception e)
{
e.printStackTrace();
 }
       %>
    </body>
</html>
