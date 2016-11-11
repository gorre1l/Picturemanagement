<%-- 
    Document   : create_group
    Created on : Jan 2, 2006, 12:12:36 AM
    Author     : ADMIN
--%>
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%   Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String uid=(String)hs.getAttribute("uid");

         String gname=request.getParameter("gname");

         int r=st.executeUpdate("insert into group_users values('"+uid+"','"+gname+"');");
        if(r!=0)
            {
               out.println("Group Created Succesfully" );
            }
    %>
    </body>
</html>
