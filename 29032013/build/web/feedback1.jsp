<%-- 
    Document   : feedback1
    Created on : Mar 21, 2013, 12:04:32 AM
    Author     : Aditya
--%>
<%@ page import="DataBase.DatabaseC" %>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link href="styles/layout.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:272px;
	top:160px;
	width:366px;
	height:43px;
	z-index:1;
}
-->
        </style>
</head>


    <body>
       
       <%
         try{
  Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String uid=(String)hs.getAttribute("uid");

         String name=request.getParameter("eid");
         String feedback=request.getParameter("feedback");

         int r=st.executeUpdate("insert into feedback values('"+uid+"','"+feedback+"');");
String status;
         if(r!=0)
             {
                status="Your Feed Back is Successfully submited to Adminstrator";
             }
         else{
                status="Your Feed Back is  submission is Failed";
           }
       
       %>
       <div id="Layer1"><%= status %></div>
	   <%
	   
	   }
	   catch(Exception e){out.print(e);}
	   %>
    </body>
</html>
