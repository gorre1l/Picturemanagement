<%@ page import="DataBase.DatabaseC" %>
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
<title>PhotoFolio</title>
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
		return false;
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
	left:40px;
	top:199px;
	width:698px;
	height:348px;
	z-index:1001;
}
#Layer3 {
	position:absolute;
	left:830px;
	top:199px;
	width:147px;
	height:380px;
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
	left:-3px;
	top:106px;
	width:988px;
	height:54px;
	z-index:1;
}
#Layer5 {
	position:absolute;
	left:2px;
	top:-22px;
	width:985px;
	height:90px;
	z-index:2;
}
#Layer6 {
	position:absolute;
	left:115px;
	top:3px;
	width:504px;
	height:85px;
	z-index:2;
}
#Layer7 {
	position:absolute;
	left:638px;
	top:5px;
	width:344px;
	height:91px;
	z-index:3;
}
#Layer8 {
	position:absolute;
	left:10px;
	top:4px;
	width:96px;
	height:97px;
	z-index:4;
}
#Layer9 {
	position:absolute;
	left:647px;
	top:110px;
	width:81px;
	height:37px;
	z-index:5;
}
.style1 {
	color: #CCCCFF;
	font-weight: bold;
	font-size: 14px;
}
.style3 {font-size: x-small}
.style4 {font-size: 12px}
.style5 {color: #FF0000}
.style6 {color: #FFFFFF}
-->
</style>
</head>
<body id="top">
<%
         ResultSet rs;
  try{
         Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String uid=(String)hs.getAttribute("uid");
        
      
                 rs=st.executeQuery("select * from user_details where eid='"+uid+"' ");
         String pic;
                 if(rs.next())
            { %>
             <div id="Layer8"><img src="<%= rs.getString(9) %>" width="96" height="101" alt="<%= uid %>"/></div>
           <% } %>
           
 
  
<div id="Layer4">
  <div id="topbar" class="clear">	
    <ul id="topnav">
	 <li  class="active"><a href="home.jsp" target="content">Home</a></li>
      <li><a href="myprofile.jsp" target="content">My Profile</a></li>
	 
      
      <li><a href="groups.jsp" target="content">Groups</a></li>
     
      <li><a href="picture_edit.html" target="content">Photo Edit</a>      </li>
      <li ><a href="news.jsp" target="content" >Posts&News</a></li>

      <li ><a href="gallery.jsp" target="content" >Gallery</a></li>
<li class="last"><a href="Feedback.jsp" target="content">FeedBack</a>      </li>

    </ul>
    <form action="#" method="post" id="search">
      <fieldset>
        <legend>Site Search</legend>
        <input type="text" value="Search Our Website&hellip;" onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
        <input type="image" id="go" src="images/search.gif" alt="Search" />
      </fieldset>
    </form>
</div></div>




<div id="Layer6" style="border:ridge; border-width:thick ">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="506" height="97" title="text">
    <param name="BGCOLOR" value="#161616" />
    <param name="BGCOLOR" value="#2C2728" />
    <param name="BGCOLOR" value="#2B3031" />
    <param name="BGCOLOR" value="#2B3031" />
    <param name="BGCOLOR" value="#333333" />
    <param name="BGCOLOR" value="#333333" />
    <param name="BGCOLOR" value="#000000" />
    <param name="BGCOLOR" value="#000000" />
    <param name="BGCOLOR" value="#000000" />
    <param name="BGCOLOR" value="" />
    <param name="BGCOLOR" value="" />
    <param name="BGCOLOR" value="" />
    <param name="movie" value="text1.swf" />
    <param name="quality" value="high" />
    <embed src="text1.swf" width="506" height="97" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" bgcolor="#161616" ></embed>
  </object>
</div>
<div id="Layer7"> <span class="style5">
  <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
 <%
 ResultSet rs1=st.executeQuery("select * from user_details ");
 String str,str1;
 while(rs1.next())
 {
     str1=rs1.getString(1);
  str=rs1.getString(3);
  
 %>
 <a href="myprofile1.jsp?eid=<%= str %>" target="content">
    <%= str1 %></a>
 <a href="myprofile1.jsp?eid=<%= str %>" target="content"><img src="<%= rs1.getString(9).trim()%>" alt="<%= str %>" width="87" height="91" /></a>
 <% 
 }
 %>
  </marquee>
</span> </div>


<div class="style3" id="Layer9"><a href="editprofile.jsp" target="content" class="style4 style6">Edit Profile</a> <br />
<a href="logout.jsp" class="style1">Logout</a></div>
</body>
<%
}
         catch(Exception e) {
              e.printStackTrace();
                             } %>
</html>

