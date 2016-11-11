<%-- 
    Document   : admin_posts
    Created on : Mar 21, 2013, 2:09:25 PM
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
        <title>JSP Page</title><link rel="stylesheet" href="styles/layout.css" type="text/css" />

        <style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:383px;
	top:193px;
	width:509px;
	height:87px;
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
                        String heading=request.getParameter("heading");
                        String description=request.getParameter("desc");
                      int row=0;
                      row=st.executeUpdate("insert into posts values('Admin','"+heading+"','"+description+"')");
                     String str;
			String str2;
                        	 if(row!=0)
                       {
                          str="Succesfully posted";
                          str2="<a href=\"admin_posts.html\">Back</a>";
                       }
					   else
					   {
					    str="Please Retry";
                                             str2="<a href=\"admin_posts.html\">Back</a>";
					   }
     
	 %>
       <div id="Layer1">
         <table width="200" height="99" border="1" cellpadding="0" cellspacing="0">
           <tr>
            <th scope="col"><%= str %></th>
           </tr>
           <tr>
             <td><%=  str2 %> </td>
           </tr>
         </table>
       </div>
	 
	 <%
	 }
catch(Exception e)
{
 out.println(e);
}


      %>
    </body>
</html>
