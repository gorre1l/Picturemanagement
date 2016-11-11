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
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>OPM</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery-photostack.js"></script>
<script type="text/javascript" src="scripts/jquery-coin-slider.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.12.custom.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	$(".pane:even").addClass("alt");

	$(".pane .btn-delete").click(function(){
		alert("Spam Request Will be Cleared Off");
		
		$(this).parents(".pane").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow")
		return true;
	});

	$(".pane .btn-unapprove").click(function(){
		alert("Photo will be Deleted");
                $(this).parents(".pane").animate({ backgroundColor: "#fff568" }, "fast")
		.animate({ backgroundColor: "#ffffff" }, "slow")
		.addClass("spam")
		return true;
	});

	$(".pane .btn-approve").click(function(){
		 alert("Photo Will be Blocked");
                $(this).parents(".pane").animate({ backgroundColor: "#dafda5" }, "fast")
		.animate({ backgroundColor: "#ffffff" }, "slow")
		.removeClass("spam")
		return true;
	});

	$(".pane .btn-spam").click(function(){
            alert("User Will be Deleted");
		$(this).parents(".pane").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow")
		return true;
	});

});
</script>
<script type="text/javascript">
$(document).ready(function () {
    $('#portfolioslider').coinslider({
        width: 480,
        height: 280,
        navigation: false,
        links: false,
        hoverPause: true
    });
    $("#tabcontainer").tabs({
        event: "click"
    });
});
</script>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:0px;
	top:0px;
	width:15px;
	height:201px;
	z-index:1001;
}
#Layer2 {
	position:absolute;
	left:25px;
	top:66px;
	width:778px;
	height:404px;
	z-index:1001;
}
#Layer3 {
	position:absolute;
	left:818px;
	top:13px;
	width:182px;
	height:259px;
	z-index:1002;
}

.pane {

	padding: 5px 5px 5px;
	position: relative;
	border-top: solid 1px #ccc;
	background-color:#999999;
}
.alt {
	background: #f5f4f4;
}
.spam {
	color: #999999;
}
#Layer4 {
	position:absolute;
	left:823px;
	top:280px;
	width:179px;
	height:165px;
	z-index:1003;
}
#Layer5 {
	position:absolute;
	left:873px;
	top:458px;
	width:106px;
	height:107px;
	z-index:1004;
}
#Layer6 {
	position:absolute;
	left:485px;
	top:10px;
	width:301px;
	height:41px;
	z-index:1005;
}
-->
</style>
</head>


<body id="top">
<div id="Layer2"> 
  <div id="slider">
    <ul id="categories" name="categories">
      <%
      Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String uid=(String)hs.getAttribute("uid");
         //out.println("connection established");
          ResultSet rs=st.executeQuery("select * from  photos where status='2' ");
        
         
       String pname,seid;
     while(rs.next())
         {
       seid=rs.getString(1).trim();
       pname=rs.getString(3).trim();
         %>
      <li class="category">
        <h2><%= pname  %></h2>
        <img src="<%= rs.getString(5).trim()%>" alt="" />
        <p></p>
        <div class="pane">
          <h3>Description </h3>
          <p><%= rs.getString(4).trim()%></p>
		   <p><a href="allow.jsp?pname=<%= pname %>" class="btn-delete">Allow</a>| |<a href="decline.jsp?pname=<%= pname %>" class="btn-approve">Decline</a> | | <a href="block.jsp?seid=<%= seid %>" class="btn-spam">Block</a></p>
        </div>
       
      
      </li>
     
      <% } %>
    </ul>
    <a class="prev disabled"></a> <a class="next disabled"></a>
<div style="clear:both"></div>
</div>
</div>
<!-- ####################################################################################################### --><!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
</body>
</html>