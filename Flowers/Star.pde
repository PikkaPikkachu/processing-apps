//From the PolygonPShapeOOP example 
//EDITED: Prakriti Bansal

// A class to describe a Star shape

class Star {

  // The PShape object
  PShape s;
  // The location where we will draw the shape
  float x, y; 
  int r, g, b;//edited 

  Star(float x1, float y1, int r1, int g1, int b1) {//edited 
    x = x1;
    y = y1; 
    r = r1;
    g = g1;
    b = b1;//edited
    // First create the shape
    s = createShape();
    s.beginShape();
    // You can set fill and stroke
    s.fill(r, g, b);
    s.noStroke();
    // Here, we are hardcoding a series of vertices
    s.vertex(0, -50);
    s.vertex(14, -20);
    s.vertex(47, -15);
    s.vertex(23, 7);
    s.vertex(29, 40);
    s.vertex(0, 25);
    s.vertex(-29, 40);
    s.vertex(-23, 7);
    s.vertex(-47, -15);
    s.vertex(-14, -20);
    // The shape is complete
    s.endShape(CLOSE);
  }
  
  void display() {
    // Locating and drawing the shape
    pushMatrix();
    translate(x, y);
    shape(s);
    popMatrix();
  }
}