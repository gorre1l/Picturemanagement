<%--
    Document   : comment.jsp
    Created on : Feb 24, 2013, 11:25:42 AM
    Author     : ADMIN
--%>
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><%
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
        HttpSession hs=request.getSession(true);
        String eid=(String)hs.getAttribute("uid");
        String heading=request.getParameter("heading");
        String description=request.getParameter("post");

        int row=0;
         row=st.executeUpdate("insert into posts values('"+eid+"','"+heading+"','"+description+"')");
        if(row!=0)
            {
          response.sendRedirect("news.jsp");
          }
     }
catch(Exception e)
{
 out.println(e);
}
 %>

    </body>
</html>
