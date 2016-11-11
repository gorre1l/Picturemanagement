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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>PhotoFolio | Gallery</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="styles/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.12.custom.min.js"></script>
<script type="text/javascript" src="scripts/jquery-prettyPhoto.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $("#tabcontainer").tabs({
        event: "click"
    });
    $("a[rel^='prettyPhoto']").prettyPhoto({
        theme: 'dark_rounded'
    });
});
</script>
</head>
<body id="top">
<%
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         //out.println("connection established");
         ResultSet rs=st.executeQuery("select * from  photos ");
         
         

         
%>
<div id="container" class="clear">
      <div id="tabcontainer">
      <ul id="tabnav">
       
      </ul>
      <div id="tabs-1" class="gallery clear">
        <ul>
		<% while(rs.next())
	    { %>
        <li><a href="<%= rs.getString(5).trim() %>" rel="prettyPhoto[gallery1]" title="<%= rs.getString(3).trim() %>"><img src="<%= rs.getString(5).trim()  %>" alt="<%=rs.getString(3).trim() %>" /></a></li>
         <% } %>
          
        </ul>
      </div>
  
     
     
     
      
    </div>
    
</div>

<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved -Vikram..! <a href="#">Domain Name</a></p>
    <p class="fl_right"> </p>
  </div>
</div>
</body>
</html>