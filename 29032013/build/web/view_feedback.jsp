<%-- 
    Document   : view_feedback
    Created on : Mar 21, 2013, 12:39:20 AM
    Author     : Aditya
--%>
<%@ page import="DataBase.DatabaseC" %>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("uid")== null)
{
out.println("Invalid Session");
out.println("Please Login");
out.println("<script>parent.location.href='index.html'</script>");

}
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link href="styles/layout.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:240px;
	top:96px;
	width:547px;
	height:1173px;
	z-index:1;
}
.style1 {
	color: #0000FF;
	font-size: 36px;
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style4 {
	color: #2A0000;
	font-weight: bold;
}
.style6 {
	color: #2A0000;
	font-size: 14px;
}
-->
        </style>
</head>
    <body> <%
	try{
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         
         
		 ResultSet rs=st.executeQuery("select * from feedback");
    %>
	    <div id="Layer1">
          <table width="200" height="145" border="0">
            <tr>
              <td height="49" colspan="3"><div align="center"><span class="style1">User Feed Back </span></div></td>
            </tr>
            <tr>
              <td width="42%" height="37"><div align="center"><span class="style4">User Id </span></div></td>
              <td width="6%"><div align="center"></div></td>
              <td width="52%"><div align="center"><span class="style6">Feed Back </span></div></td>
            </tr>
			<% 
			while(rs.next())
			{
%> 
            <tr>
                <td height="46"><%= rs.getString(1) %></td>
              <td>&nbsp;</td>
              <td><%= rs.getString(2) %></td>
            </tr>
<%}

                 }

        catch(Exception e)
                {
             out.print(e);
                 }%>
          </table>
    </div>
        <h1>&nbsp;</h1>
    </body>
</html>
