
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="styles/layout.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.color.js"></script>

<script type="text/javascript">
$(document).ready(function(){

	$(".pane:even").addClass("alt");

	$(".pane .btn-delete").click(function(){
		alert("This comment will be deleted!");
		
		$(this).parents(".pane").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow")
		return true;
	});

	$(".pane .btn-unapprove").click(function(){
		$(this).parents(".pane").animate({ backgroundColor: "#fff568" }, "fast")
		.animate({ backgroundColor: "#ffffff" }, "slow")
		.addClass("spam")
		return false;
	});

	$(".pane .btn-approve").click(function(){
		$(this).parents(".pane").animate({ backgroundColor: "#dafda5" }, "fast")
		.animate({ backgroundColor: "#ffffff" }, "slow")
		.removeClass("spam")
		return false;
	});

	$(".pane .btn-spam").click(function(){		
		$(this).parents(".pane").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow")
		return false;
	});

});
</script>


<style type="text/css">
body {
	margin: 10px auto;
	width: 470px;
}
a, a:visited {
	color: #000099;
}
a:hover {
	text-decoration: none;
}
h3 {
	margin: 0;
	padding: 0 0 .3em;
}
p {
	margin: 0;
	padding: 0 0 1em;
}
.pane {
	background: #ffffff;
	padding: 10px 20px 10px;
	position: relative;
	border-top: solid 1px #ccc;
}
.alt {
	background: #f5f4f4;
}
.spam {
	color: #999999;
}
</style>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:68px;
	top:6px;
	width:402px;
	height:49px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:39px;
	top:73px;
	width:400px;
	height:317px;
	z-index:2;
}
#Layer3 {
	position:absolute;
	left:30px;
	top:401px;
	width:396px;
	height:137px;
	z-index:3;
}
#Layer4 {
	position:absolute;
	left:292px;
	top:4px;
	width:597px;
	height:536px;
	z-index:4;
}
#Layer5 {
	position:absolute;
	left:6px;
	top:7px;
	width:55px;
	height:48px;
	z-index:5;
}
.style3 {font-size: 36px}
-->
</style>
</head>

<body>
<div id="Layer4">
  <p align="center" class="style3">Posts &amp; News  </p> 
  <%  try{
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
     String desc;
     ResultSet rs1=st.executeQuery("select * from  posts");
  while(rs1.next())
  { desc=rs1.getString(3).trim();
  %> 
  <div class="pane">
	<h3>By:<%= rs1.getString(1).trim() %></h3>
	<h3>About: <%= rs1.getString(2).trim() %></h3>
	
	<p>Description:<%= desc %>.</p>
         <p><a href="#" class="btn-delete">Delete</a></p>
         <%   /*  %>   <p><a href="delete.jsp?desc=<%= desc %>" class="btn-delete">Delete</a></p>
   <%   */  %>
</div>
  
 
    <%
   }
%>

  
  <form id="form1" name="form1" method="post" action='news1.jsp'>
   <p>
    <label>
    <input name="heading" type="text" id="heading" value="Heading" size="82" required="required"/>
    </label>
</p> <textarea name="post" cols="82" rows="5" wrap="physical" id="comment" required="required">Post Your News Here</textarea>
<input type="submit"  />
</form>

</div>
</body>
<%
}
         catch(Exception e)
                 {
          out.println(e);
             }
%>
</html>
