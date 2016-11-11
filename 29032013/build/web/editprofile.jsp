<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="DataBase.DatabaseC"%>
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="styles/layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:265px;
	top:40px;
	width:477px;
	height:497px;
	z-index:1;
}
.style1 {
	font-size: large;
	color: #FF0000;
}
#Layer2 {
	position:absolute;
	left:20px;
	top:28px;
	width:72px;
	height:70px;
	z-index:2;
}
-->
</style>
</head>
<body>
    <%
    try{
      Connection con=DatabaseC.getConnection();
      Statement st=con.createStatement();
      String uid=(String)session.getAttribute("uid");
      ResultSet rs=st.executeQuery("select * from user_details where eid='"+uid+"'");
   if(rs.next())
       {
    %>
<form id="form1" name="form1" method="post" action="edit1.jsp">
<div id="Layer1" style="border:ridge; border-width:thick">
  <table width="90%" height="501" border="0">
    <tr>
      <td colspan="3" align="center"><span class="style1">Edit Profile </span></td>
    </tr>
    <tr>
      <td width="44%" align="right"><strong>First Name </strong></td>
      <td width="5%">&nbsp;</td>
      <td width="51%">
          <input name="f_name" type="text" id="f_name" size="30" maxlength="30" value="<%= rs.getString(1) %>" required="required" />        </td>
    </tr>
    <tr>
      <td align="right"><strong>Last Name </strong></td>
      <td>&nbsp;</td>
      <td>
        <input name="l_name" type="text" id="l_name" size="30" maxlength="30" required="required" value="<%= rs.getString(2) %>"/>        </td>
    </tr>
    <tr>
      <td align="right"><strong>Email id </strong></td>
      <td>&nbsp;</td>
      <td>
        <input name="eid" type="text" id="eid" size="30"  value="<%= rs.getString(3) %>" maxlength="30"  required="required" readonly="readonly"/>        </td>
    </tr>
   
    <tr>
      <td align="right"><strong>Upload Profile Picture </strong></td>
      <td>&nbsp;</td>
      <td><input type="file" name="file" /></td>
    </tr>
    <tr>
      <td align="right"><strong>DOB</strong></td>
      <td>&nbsp;</td>
      <td><input name="dob" type="text" id="dob" value="<%= rs.getString(6) %>" size="20" maxlength="10" /></td>
    </tr>
    <tr>
      <td align="right"><strong>Phone Number </strong></td>
      <td>&nbsp;</td>
      <td><input name="phno" type="text" id="phno" size="20" maxlength="10" value="<%= rs.getString(5) %>" required="required"/></td>
    </tr>
    <tr>
      <td align="right"><strong>Place</strong></td>
      <td>&nbsp;</td>
      <td><input name="place" type="text" id="place" size="20" maxlength="20" value="<%= rs.getString(7) %>" />       </td>
    </tr>
    <tr>
      <td align="right"><strong>Aadhar Id </strong></td>
      <td>&nbsp;</td><td> <input name="aadharid" type="text" id="aadharid" size="15" maxlength="15" required="required" value="<%= rs.getString(8) %>" readonly="readonly" /></td>
    </tr>
    <tr>
      <td colspan="3" align="center"><a href="change_password.html">click here to change your password</a></td>
    </tr>
    <tr>
      <td colspan="3" align="center"><input name="save" type="submit" id="save" value="save" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input name="reset" type="reset" id="reset" value="Reset" /></td>
    </tr>
  </table>
</div></form>
</body>
    <%
  }
    }
catch(Exception e)
{
 e.printStackTrace();
}
%>
</html>
