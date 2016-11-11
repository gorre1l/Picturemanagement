
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head><link href="styles/layout.css" rel="stylesheet" type="text/css" />
    <body>
     <%
              Connection con=DatabaseC.getConnection();
            Statement st = con.createStatement();
            HttpSession hs=request.getSession(true);

           // out.println("connection established");
           try {
             String f_name = request.getParameter("f_name");
             String l_name = request.getParameter("l_name");
             String eid = request.getParameter("eid");
             String profile_pic ="aditya" ;

             String  phno= request.getParameter("phno");
             String dob= request.getParameter("dob");
             String place = request.getParameter("place");
              String aadharid = request.getParameter("aadharid");
              String status="1";
              out.println(f_name);
             out.println(l_name);
             out.println(eid);
             out.println(profile_pic);
             out.println(phno);
             out.println(dob);
             out.println(aadharid);
             out.println(place);

             
             int rows = 0;
            // rows=st.executeUpdate("insert into d values('"+f_name+"');");
             rows = st.executeUpdate("insert into user_details values('"+f_name+"','"+l_name+"','"+eid+"','"+dob+"','"+phno+"','"+dob+"','"+place+"','"+aadharid+"','"+profile_pic+"','"+status+"');");

             if(rows == 1)
             {
                  response.sendRedirect("profile.jsp");
            hs.setAttribute("uid1",eid);
            hs.setAttribute("pwd",dob);
             }
            else{ %>
                  <center><h1>User Registration Failed 2 </h1><br><br>
                  <a href="./register.html">Back To Register Page</a></center>
             <% }
            }catch(Exception e)
             {  %>
             <%  e.printStackTrace();
             %>
                  <center><h1>User Registration failed 3 </h1><br><br>
                      <a href="./register.html">Back To Register Page</a></center>


                      <%}
          %>
    </body>
</html>
