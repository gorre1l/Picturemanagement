<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="styles/layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:519px;
	top:114px;
	width:351px;
	height:292px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:281px;
	top:58px;
	width:344px;
	height:39px;
	z-index:2;
}
.style2 {font-size: 16px}
.style3 {
	color: #0000FF;
	font-weight: bold;
}
#Layer3 {
	position:absolute;
	left:7px;
	top:120px;
	width:495px;
	height:81px;
	z-index:2;
}
.style4 {
	color: #0000FF;
	font-weight: bold;
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: large;
}
-->
</style>
</head>

<body>
<%HttpSession hs=request.getSession(true);
 String eid=(String)hs.getAttribute("uid1");
 String pwd=(String)hs.getAttribute("pwd");

%>
<div id="Layer3"><table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th width="33%" height="47" scope="col"><div align="left" class="style4">Your User Id </div></th>
    <th width="67%" scope="col"><div align="left" class="style4">:<%= eid %></div></th>
  </tr>
  <tr>
    <td height="53"><div align="left" class="style4">Password</div></td>
    <td><div align="left" class="style4">:<%= pwd %></div></td>
  </tr>
</table>
</div>
<form id="form1" name="" enctype="multipart/form-data" method="post" action="profile_pic.jsp">
<div id="Layer1">
  <table width="200" height="234" border="0">
    <tr>
      <td><span class="style2">To Compete profile creation Upload Your Profile Picture</span></td>
    </tr>
    <tr>
      <td><div align="center">
        <hr />

      </div></td>
    </tr>
    <tr>
      <td>
        <div align="center">
          Profile Picture:
          <input type="file" name="file"/>
          </div>
        </td>
    </tr>
    <tr>
      <td><div align="center">
        <input type="submit" value="Submit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Submit2" value="Reset" />
      </div></td>a
    </tr>
    <tr>
      <td><div align="right">
        <a href="index.html" class="style3">Skipp</a>
      </div></td>
    </tr>
    <tr>
      <td>----&gt; Your Profile Request was Sent to Admin </td>
    </tr>
  </table>
</div></form>

</body>
</html>
