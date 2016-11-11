<%@ page import="java.io.*,javax.imageio.*,java.awt.image.*" %>
<%
String picname=request.getParameter("picname");
   BufferedImage bi,bufferedImage;
   InputStream imageIn = this.getServletContext().getResourceAsStream(picname);
   BufferedInputStream in = new BufferedInputStream(imageIn);
   bi = ImageIO.read(in);
   int w = bi.getWidth(null);
   int h = bi.getHeight(null);

   bufferedImage = new BufferedImage(w, h, BufferedImage.TYPE_BYTE_INDEXED);
      
   float[] blurKernel = { 0.1f, 0.2f, 0.3f,   
        0.1f, 0.2f, 0.3f,
        0.1f, 0.2f, 0.3f };

   BufferedImageOp blur = new ConvolveOp(new Kernel(3, 3, blurKernel));
    
   bufferedImage = blur.filter(bi, null);
  
 
  ServletOutputStream pw = response.getOutputStream();
  ImageIO.write(bufferedImage,"JPEG",pw);

%>