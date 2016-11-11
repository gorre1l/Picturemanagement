<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*,javax.imageio.*,java.awt.image.*,java.awt.color.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><link rel="stylesheet" href="styles/layout.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:3px;
	top:46px;
	width:348px;
	height:401px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:361px;
	top:45px;
	width:395px;
	height:401px;
	z-index:2;
}
#Layer3 {
	position:absolute;
	left:13px;
	top:9px;
	width:333px;
	height:24px;
	z-index:3;
}
#Layer4 {
	position:absolute;
	left:369px;
	top:10px;
	width:350px;
	height:28px;
	z-index:4;
}
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.style2 {
	color: #0000FF;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
</head>

<body><%
   try {
       String picname=request.getParameter("picname");
   BufferedImage bi,bufferedImage;
   InputStream imageIn = this.getServletContext().getResourceAsStream(picname);
   BufferedInputStream in = new BufferedInputStream(imageIn);
   bi = ImageIO.read(in);
   int w = bi.getWidth(null);
   int h = bi.getHeight(null);
   bufferedImage = new BufferedImage(w, h, BufferedImage.TYPE_BYTE_GRAY);  

   ColorSpace cs = ColorSpace.getInstance(ColorSpace.CS_GRAY);  
   ColorConvertOp op = new ColorConvertOp(cs, null);  
   bufferedImage = op.filter(bi, bufferedImage);  

  
 
  ServletOutputStream pw = response.getOutputStream();
  //ImageIO.write(bi,"JPEG",pw);
  ImageIO.write(bufferedImage,"JPEG",pw);

 

%>
<div id="Layer1"></div>
<div id="Layer2"><%= ImageIO.write(bufferedImage,"JPEG",pw) %></div>
<div id="Layer3"> 
  <div align="center" class="style1">Before Effects </div>
</div>
<div id="Layer4">
  <div align="center" class="style2">After Effects </div>
</div> <%
   } catch(Exception e)
  {
     out.println(e);
  }%>
</body>
</html>
