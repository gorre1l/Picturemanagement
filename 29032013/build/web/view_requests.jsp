<%-- 
    Document   : view_requests
    Created on : Mar 22, 2013, 1:42:28 PM
    Author     : Arjun
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
        <title>JSP Page</title><link href="styles/layout.css" rel="stylesheet" type="text/css" />

        <style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:71px;
	top:76px;
	width:1216px;
	height:465px;
	z-index:1;
}
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: x-large;
}
.style2 {font-size: large}
.style4 {color: #0000FF}
.style6 {color: #FFFFFF}
.style7 {font-size: large; color: #FFFFFF; font-weight: bold; }
-->
        </style>
</head>
    <body>
    <div id="Layer1"><table width="200" border="1" cellspacing="0" cellpadding="0">
      <tr>
        <th height="36" colspan="6" scope="col"><span class="style1">Requests for New Profile Creation </span></th>
      </tr>
      <tr>
        <td width="14%" height="39"><div align="center" class="style7">First Name </div></td>
        <td width="15%"><div align="center" class="style7">Last Name </div></td>
        <td width="23%"><div align="center" class="style7">Email id </div></td>
        <td width="20%"><div align="center" class="style7">Aadhard</div></td>
        <td width="14%"><div align="center" class="style7">Accept </div></td>
        <td width="14%"><div align="center" class="style7">Reject</div></td>
      </tr>
      <%
        try{              Connection con=DatabaseC.getConnection();
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from user_details where status='1'");
            String name=null,name2=null,aadhar=null,eid=null ;
            while(rs.next())
                {
              name=rs.getString(1);
              name2=rs.getString(2);
              eid=rs.getString(3);
              aadhar=rs.getString(8);




    %>
	  <tr>
        <td height="39"><div align="center"><%= name %></div></td>
        <td><div align="center"><%= name2 %></div></td>
        <td><div align="center"><%= eid %></div></td>
        <td><div align="center"><%= aadhar %></div></td>
        <td><div align="center"><a href="accept.jsp?eid=<%= eid %>">Accept</a></div></td>
        <td><div align="center"><a href="reject.jsp?eid=<%= eid %>">Reject</a></div></td>
      </tr>
      <%
      } }
        catch(Exception e){
        e.printStackTrace();
        }
      %>
    </table>
    </div>
    
    </body>
</html>
