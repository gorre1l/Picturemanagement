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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>PhotoFolio | Portfolio</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:2px;
	top:519px;
	width:992px;
	height:36px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:1px;
	top:0px;
	width:154px;
	height:499px;
	z-index:2;
}
#Layer3 {
	position:absolute;
	left:853px;
	top:6px;
	width:140px;
	height:504px;
	z-index:3;
}
#Layer4 {
	position:absolute;
	left:837px;
	top:2px;
	width:156px;
	height:258px;
	z-index:3;
}
#Layer5 {
	position:absolute;
	left:179px;
	top:0px;
	width:656px;
	height:516px;
	z-index:4;
}
#Layer6 {
	position:absolute;
	left:188px;
	top:12px;
	width:183px;
	height:27px;
	z-index:5;
}
#Layer7 {
	position:absolute;
	left:633px;
	top:3px;
	width:198px;
	height:58px;
	z-index:6;
}
#Layer8 {
	position:absolute;
	left:181px;
	top:63px;
	width:650px;
	height:453px;
	z-index:7;
}
#Layer9 {
	position:absolute;
	left:379px;
	top:2px;
	width:247px;
	height:47px;
	z-index:8;
}
#Layer10 {
	position:absolute;
	left:837px;
	top:393px;
	width:155px;
	height:88px;
	z-index:9;
}
#Layer11 {
	position:absolute;
	left:838px;
	top:266px;
	width:178px;
	height:122px;
	z-index:10;
}
.style1 {color: #FF0000}
.style2 {
	color: #FF00FF;
	font-weight: bold;
}
#Layer12 {
	position:absolute;
	left:12px;
	top:478px;
	width:151px;
	height:29px;
	z-index:11;
}
.style3 {color: #0000FF; }
#Layer13 {
	position:absolute;
	left:14px;
	top:346px;
	width:150px;
	height:144px;
	z-index:11;
}
-->
</style>
</head>
<body id="top">




<!--Footer -->
<div id="Layer1"   broder="1" align="center">
Copyright � 2013 - All Rights Reserved - &quot;Vision Minds &quot;
<br/>
Developed By "Vision Minds Team"
</div><!--footer ending -->
<div id="Layer2" style="border:ridge ; border-width:10px"><b>&lt;&lt;&lt; Group You Have</b><hr align="left" width="75%" size="3" noshade="noshade" class="bold"/>
  <hr align="right" width="75%" size="3" noshade="noshade" class="bold"/>
  <%
     try{
  Connection con=DatabaseC.getConnection();
         Statement st=con.createStatement();
         HttpSession hs=request.getSession(true);
         String uid=(String)hs.getAttribute("uid");
		 
		ResultSet rs=st.executeQuery("select * from  group_users where eid='"+uid+"'");
		%>
  <table width="200" border="1">
    <% 
	while(rs.next())
	{ %>
	<tr>
      <td><%= rs.getString(2)%></td>
    </tr>
  <%
  }
  %>  
  </table>
</div>

<div id="Layer4">
  <h3 align="center">Notifications</h3><hr size="3" noshade="noshade" class="bold" />
<marquee behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();"><center>
<img src="images/girl.gif" width="87" height="86" alt="smile" />
<p>uploaded a New Image</p>
<img src="images/485797bab702e_70632n.jpg" width="87" height="86" alt="smile" />
<p>commented on Aditya's New photo </p>
<img src="images/140.jpg" width="87" height="86" alt="smile" />
<p>commented on Aditya's New photo </p>
</center>
</marquee>
</div>
<div id="Layer5"></div>
<div id="Layer6">
<h3>Team Name</h3></div>
<div id="Layer8"><iframe src="group_profile.html" name="groups" width="650" height="450" scrolling="auto" frameborder="0"></iframe></div>
<div id="Layer7">
  <marquee direction="left" behavior="scroll"  onmouseover="this.stop();" onmouseout="this.start();">
  <a href="#"><img src="images/140.jpg" alt="pic" width="40" height="50" />
  </a><a href="#"><img src="images/girl.gif" alt="pic" width="40" height="50" />
 </a>
  </marquee>
</div>
<div id="Layer10" align="center"><span class="style2">Add members to Group <br/>
</span>
  <form action="" method="post">
<input name="add" type="text" size="20" /><br /><input  align="middle" type="button" name="add" value="add" /></form></div>
<div id="Layer11">
  <form action="" method="post" enctype="multipart/form-data" name="form1" class="style1" id="form1" >
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>    upload picture </strong>
  <input type="file" name="file" />
      <strong>Description</strong>
    <textarea name="textarea" cols="30" rows="5"></textarea>
    
  <input type="submit" value="upload" />
       <input name="Reset" type="reset" class="name" id="reset" value="Reset" />
</form>
</div>
<div id="Layer13">
  <table width="200" height="145" border="1">
    <tr>
      <td align="center"><div align="center"><a href="create_groups.html" target="groups" class="style3" align="center">Create Group</a>
      </div></td>
    </tr>
    <tr>
      <td><div align="center"><a href="create_groups.html" target="groups" class="style3" align="center">Add member to Group</a></div></td>
    </tr>
    <tr>
      <td><div align="center"><a href="leave_group.jsp" target="groups" class="style3" align="center">Leave Group </a></div></td>
    </tr>
    <tr>
      <td><div align="center"></div></td>
    </tr>
    <tr>
      <td><div align="center"></div></td>
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