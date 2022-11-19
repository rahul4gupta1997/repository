<%@ page import=" javax.imageio.ImageIO" %>
<%@ page import=" javax.swing.ImageIcon" %>
<%@ page import=" javax.swing.JPanel" %>
<%@ page import=" java.awt.Image" %>
<%@ page import=" java.awt.image.RenderedImage" %>
<%@ page import=" java.io.File" %>
<%@ page import=" java.io.IOException" %>
<%@ page import=" java.awt.Graphics" %>
<%@ page import=" java.awt.Dimension" %>
<%@ page import=" java.io.File" %> 
<%@ page import=" java.io.IOException" %>
<%@ page import=" java.util.Iterator" %>
<%@ page import=" java.util.List" %>
<%@ page import=" java.awt.FlowLayout" %>
<%@ page import=" java.awt.Graphics2D" %>
<%@ page import=" javax.imageio.ImageIO" %>
<%@ page import=" javax.swing.JFrame" %>
<%@ page import=" java.awt.image.BufferedImage" %>
<%@ page import=" java.awt.image.RenderedImage" %>
<%@ page import=" org.openimaj.image.FImage" %>
<%@ page import=" org.openimaj.image.ImageUtilities" %>
<%@ page import=" org.openimaj.image.processing.face.detection.DetectedFace" %>
<%@ page import=" org.openimaj.image.processing.face.detection.HaarCascadeDetector" %>
<%@ page import=" com.github.sarxos.webcam.Webcam" %>
<%@ page import=" com.github.sarxos.webcam.WebcamResolution" %>

<%!
class ImagePanel extends JPanel {
	 private Image img;
	 public ImagePanel(String img) {
	  this(new ImageIcon(img).getImage());
	 }
	 public ImagePanel(java.awt.Image image) {
	  this.img = image;
	  Dimension size = new Dimension(image.getWidth(null), image.getHeight(null));
	  setPreferredSize(size);
	  setMinimumSize(size);
	  setMaximumSize(size);
	  setSize(size);
	  setLayout(null);
	 }
	 public void paintComponent(Graphics g) {
	  g.drawImage(this.img, 0, 0, null);
	  
	  File file = new File("image.png");
	  try {
		ImageIO.write((RenderedImage) this.img, "png", file);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 }
	}

%>
