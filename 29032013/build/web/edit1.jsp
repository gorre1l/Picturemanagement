<%-- 
    Document   : edit1
    Created on : Apr 10, 2013, 1:07:56 AM
    Author     : Aditya
--%>
<%@ page import="DataBase.DatabaseC" %>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head><link rel="stylesheet" href="styles/layout.css" type="text/css" />

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

        String fname=request.getParameter("f_name");
        String lname=request.getParameter("l_name");
        String phno=request.getParameter("phno");
        String place=request.getParameter("place");
         String dob=request.getParameter("dob");
       int rs1,rs2,rs3,rs4;
        int r=0;
       r=st.executeUpdate("update user_details set f_name='"+fname+"'  where eid='"+eid+"';");
       rs1=st.executeUpdate("update user_details set  l_name='"+lname+"'  where eid='"+eid+"';");
       rs2=st.executeUpdate("update user_details set  phno='"+phno+"' where eid='"+eid+"';");
       rs3=st.executeUpdate("update user_details set place='"+place+"' where eid='"+eid+"';");
rs4=st.executeUpdate("update user_details set dob='"+dob+"' where eid='"+eid+"';");
             if(r!=0)
           {
     %>
     <center><h3>Profile Updated Successfully</h3>
         <a href="home.jsp" target="content">Back</a>
     </center>
       <%    }

        }
  catch(Exception e){
  out.println(e);

  }
  %>
    </body>
</html>
