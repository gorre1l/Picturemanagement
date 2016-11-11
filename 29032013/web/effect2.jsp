<%@ page import="java.io.*,javax.imageio.*,java.awt.image.*" %>
<%
String picname=request.getParameter("picname");
   BufferedImage bi, biFiltered;
   InputStream imageIn = this.getServletContext().getResourceAsStream(picname);
   BufferedInputStream in = new BufferedInputStream(imageIn);
   bi = ImageIO.read(in);
   int w = bi.getWidth(null);
   int h = bi.getHeight(null);
   BufferedImageOp op = null;
   byte lut[] = new byte[256];
   for (int j=0; j<256; j++) {
      lut[j] = (byte)(256-j); 
   }
   ByteLookupTable blut = new ByteLookupTable(0, lut); 
   op = new LookupOp(blut, null);
   biFiltered = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
   op.filter(bi, biFiltered);
  // send the image straight to the client
   // write the image as a png

  ServletOutputStream pw = response.getOutputStream();
  ImageIO.write(biFiltered, "JPEG",pw);

%>

