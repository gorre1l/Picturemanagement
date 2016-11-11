
<%-- 
    Document   : change_password
    Created on : Feb 21, 2013, 9:09:26 PM
    Author     : Aditya
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
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
        <title>JSP Page</title>
    <link href="styles/layout.css" rel="stylesheet" type="text/css" /></head>
    <body>
     <%
           try{
            Connection con=DatabaseC.getConnection();
            Statement st = con.createStatement();

            String uid=request.getParameter("eid");
            String old=request.getParameter("old");
            String new1=request.getParameter("pwd");
            String new2=request.getParameter("pwd2");

            ResultSet rs=st.executeQuery("select *from user_details where eid='"+uid+"'");
            String orinalpwd=rs.getString("4");
        if(orinalpwd.equals("old"))
        {
            if(new1.equals("pwd2"))
                {
                   int n=st.executeUpdate("update user_details set password='"+new1+"' where eid='"+uid+"'");
                   if(n != 1)
                       {
        %>            <h3 align="center">Password Updated Successfully</h3>
        <%             }
                   else
                       {
        %>            <h3 align="center">Password Updation Failed</h3>
        <%             }
                }
            else
                {
        %>      <h3 align="center">New Password Mis Match</h3>
        <%       }
        }
        else
        {
        %> <h3 align="center">Invalid Password </h3>
        <p>
          <% }
             }
            catch(Exception e)
            {
                e.printStackTrace();
            }
          %>
        </p>
     
    </body>
</html>
