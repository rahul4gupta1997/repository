package com.model;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
import java.awt.Image;
import java.awt.image.RenderedImage;
import java.io.File;
import java.io.IOException;
import java.awt.Graphics;
import java.awt.Dimension;

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
