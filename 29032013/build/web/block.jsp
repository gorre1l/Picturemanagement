<%--
    Document   : block
    Created on : Apr 2, 2013, 9:41:37 AM
    Author     : Aditya
--%>
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link rel="stylesheet" href="styles/layout.css" type="text/css" />
    </head>
    <body>
        <%
          try{
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String eid=request.getParameter("seid");

           out.println(eid);
        // String query="update photos set status='1' where  "
         int n=st.executeUpdate("update user_details set status='4' where eid='"+eid+"';");
         //int m=st.executeUpdate("update photos set status='1' where photo_id='"+pname1+"';");
out.println(n);
          if(n!=0)
              { %>
              <h3 align="center">User Blocked </h3>
                      <center><a href="home.jsp" align="center">Return Back</a></center>
                      <%
                      }


          }catch(Exception e)
                  {
                 e.printStackTrace();
                  }
        %>
    </body>
</html>
