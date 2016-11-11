<%-- 
    Document   : Feedback
    Created on : Mar 20, 2013, 11:42:26 PM
    Author     : Aditya
--%>
<%@ page import="DataBase.DatabaseC" %>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*"%>
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
	left:246px;
	top:23px;
	width:377px;
	height:379px;
	z-index:1;
}
.style1 {
	color: #D40055;
	font-family: "A Cut Above The Rest";
	font-size: xx-large;
	display: run-in;
}
.style3 {color: #0000FF; font-weight: bold; }
-->
        </style>
</head>
    <body><form name="form1" method="post" action="feedback1.jsp">
         <%
         try{
  Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String uid=(String)hs.getAttribute("uid");

         %>
    <div id="Layer1">
      <table width="375" height="382" border="0">
        <tr>
          <td colspan="3"><div align="center" class="style1">Feed Back </div></td>
        </tr>
        <tr>
          <td width="90"><div align="right" class="style3">User Id </div></td>
          <td width="45">&nbsp;</td>
          <td width="216">
              <input name="eid" type="text" size="45" maxlength="40" value="<%= uid %>" readonly />
          </td>
        </tr>
        <tr>
          <td><div align="right" class="style3">Feed Back </div></td>
          <td>&nbsp;</td>
          <td><textarea name="feedback" cols="30" rows="5" required="required"></textarea></td>
        </tr>
        <tr>
          <td colspan="3">
            <div align="justify">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            <input type="submit" name="Submit" value="Submit">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="reset" name="reset" value="Reset">
            </div>
          <div align="center"></div>            <div align="center"></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </div>
              <%
              }
         catch(Exception e)
                 {
               out.println(e);
                  } %>
        </form>

    </body>

</html>
