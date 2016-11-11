<%-- 
    Document   : login
    Created on : Feb 14, 2013, 7:43:07 PM
    Author     : Aditya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Picture Management</title>
    </head>
    <body>
        <%
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
//         HttpSession hs=request.getSession(true);
         String uid=request.getParameter("uid");
         String pwd=request.getParameter("pwd");
         String admin="admin";
         String dm="dm";
         String status;
          ResultSet rs=st.executeQuery("select * from user_details where eid='"+uid+"' and password='"+pwd+"'; ");
             if(rs.next())
              {
                 status=rs.getString(10);
                 if(status.equals("2"))
                 {
         response.sendRedirect("user_home.html");
              session.setAttribute("uid",uid);
                 }
                 else if(status.equals("1"))
                     {
                  response.sendRedirect("pending_index.html");
                     }
                 else if(status.equals("3"))
                     {
                  response.sendRedirect("rejected_index.html");
                     }
                 else if(status.equals("4"))
                     {
                  response.sendRedirect("index3.html");
                     }
             
             }
         else if(uid.equals("admin") && pwd.equals("admin123"))
             {
         response.sendRedirect("admin_home.html");
         session.setAttribute("uid",admin);
              }
         else if(uid.equals("dm") && pwd.equals("dm123"))
             {
         response.sendRedirect("dm_home.html");
         session.setAttribute("uid",dm);
            }
         else {
                response.sendRedirect("index_2.html");
              }
      

        %>

        
    </body>
</html>
