<%@ page import="java.io.*,javax.imageio.*,java.awt.image.*,java.awt.geom.*" %>
<%
String picname=request.getParameter("picname");
   BufferedImage src,dst;
   InputStream imageIn = this.getServletContext().getResourceAsStream(picname);
   BufferedInputStream in = new BufferedInputStream(imageIn);
   src = ImageIO.read(in);
   int width = src.getWidth(null);
   int height = src.getHeight(null);

  
    dst = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

    for (int i = 0; i < height; i++)
      for (int j = 0; j < width; j++) {
        int upperLeft = 0;
        int lowerRight = 0;

        if (i > 0 && j > 0)
          upperLeft = src.getRGB(j - 1, i - 1);

        if (i < height - 1 && j < width - 1)
          lowerRight = src.getRGB(j + 1, i + 1);

        int redDiff = ((lowerRight >> 16) & 255) - ((upperLeft >> 16) & 255);

        int greenDiff = ((lowerRight >> 8) & 255) - ((upperLeft >> 8) & 255);

        int blueDiff = (lowerRight & 255) - (upperLeft & 255);

        int diff = redDiff;
        if (Math.abs(greenDiff) > Math.abs(diff))
          diff = greenDiff;
        if (Math.abs(blueDiff) > Math.abs(diff))
          diff = blueDiff;

        int grayColor = 128 + diff;

        if (grayColor > 255)
          grayColor = 255;
        else if (grayColor < 0)
          grayColor = 0;

        int newColor = (grayColor << 16) + (grayColor << 8) + grayColor;

        dst.setRGB(j, i, newColor);
    }

  ServletOutputStream pw = response.getOutputStream();
  ImageIO.write(dst,"JPEG",pw);

%>
