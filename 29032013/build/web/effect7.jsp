<%@ page import="java.io.*,javax.imageio.*,java.awt.image.*,java.awt.geom.*" %>
<%
String picname=request.getParameter("picname");
   BufferedImage bi,bufferedImage;
   InputStream imageIn = this.getServletContext().getResourceAsStream(picname);
   BufferedInputStream in = new BufferedInputStream(imageIn);
   bi = ImageIO.read(in);
   int w = bi.getWidth(null);
   int h = bi.getHeight(null);

   bufferedImage = new BufferedImage(w, h, BufferedImage.TYPE_BYTE_INDEXED);
   Kernel kernel = new Kernel(3, 3, new float[] { -1, -1, -1, -1, 9, -1, -1,-1, -1 });
   BufferedImageOp op = new ConvolveOp(kernel);
   bufferedImage = op.filter(bi, null);
  

  ServletOutputStream pw = response.getOutputStream();
  ImageIO.write(bufferedImage,"JPEG",pw);

%>
