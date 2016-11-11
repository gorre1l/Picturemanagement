<%--
    Document   : accept
    Created on : Mar 22, 2013, 2:14:38 PM
    Author     : Arjun
--%>
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
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
        HttpSession hs=request.getSession(true);
        String eid=request.getParameter("eid");
       int r=0;
       r=st.executeUpdate("update user_details set status='3' where eid='"+eid+"'");
       if(r!=0)
           {
       response.sendRedirect("view_requests.jsp");
           }

        }
  catch(Exception e){
  out.println(e);

  }
  %>
    </body>
</html>
