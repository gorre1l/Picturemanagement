<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title><link href="styles/layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style2 {color: #FF0000}
#Layer6 {	position:absolute;
	left:192px;
	top:4px;
	width:393px;
	height:34px;
	z-index:6;
}
-->
</style>
</head>
<%
String type=request.getParameter("type");
out.println(" Effect Selected is :"+type);
%>
<body>
<div id="Layer6">
  <form action="test.jsp?type=<%= type %>" method="post" enctype="multipart/form-data" name="form3" class="style2" id="form3">
    Select Photo
    <input type="file" name="file" />
	<input type="submit">
  </form>
</div>
</body>
</html>
