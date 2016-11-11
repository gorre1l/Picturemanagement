
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
		return false;
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
		return true;
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
	left:479px;
	top:4px;
	width:408px;
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
-->
</style>
</head>

<body>

<%
         try{
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String pname1=request.getParameter("pname");
         ResultSet rs=st.executeQuery("select * from photos where photo_id='"+pname1+"'");
         if(rs.next())
         {



%>

<div id="Layer1">
    <%= rs.getString(3) %> &nbsp;&nbsp;&nbsp; By <%= rs.getString(1) %></div>
<div id="Layer2"><img src="<%= rs.getString(5)%>" width="400" height="315" /></div>
<div id="Layer3">
  <p>Description </p>
  <p><%= rs.getString(4)%></p>
</div>

<% }%>
<div id="Layer4">
  <p>
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="202" height="41">
      <param name="movie" value="text2.swf" />
      <param name="quality" value="high" />
      <param name="bgcolor" value="#161616" />
      <embed src="text2.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="202" height="41" bgcolor="#161616"></embed>
    </object>
  </p> <%
     ResultSet rs1=st.executeQuery("select * from comments where photo_id='"+pname1+"'");
  while(rs1.next())
  {
  %>
  <div class="pane">
	<h3><%= rs1.getString(2).trim() %></h3>
	<p><%= rs1.getString(3).trim() %>.</p>
	<p><a href="#" class="btn-delete">Delete</a> |  <a href="spam.jsp?pname=<%= pname1 %>" class="btn-spam">Spam</a></p>
</div>

<%
   }
%>


 </div>
<div id="Layer5">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="39" height="34">
    <param name="BGCOLOR" value="#161616" />
    <param name="movie" value="button3.swf" />
    <param name="quality" value="high" />
    <embed src="button3.swf" width="39" height="34" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" bgcolor="#161616" ></embed>
  </object>
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
