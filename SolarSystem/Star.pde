/**
* Author: Unknown (From the PolygonPShapeOOP example )
*
* EDITED: Prakriti Bansal  
*
* A class to describe a star shape
*/

class Star {

  // The PShape object
  PShape s;
  
  // The location where we will draw the shape
  float x, y; 
  
  //The color of the shape (EDITED)
  int r, g, b;

  Star(float x1, float y1, int r1, int g1, int b1) {//EDITED
    x = x1;
    y = y1; 
    r = r1;
    g = g1;
    b = b1;
    // First create the shape
    s = createShape();
    //Vertices describe a star shape...
    s.beginShape();
    s.fill(r, g, b);
    s.noStroke();
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
    s.endShape(CLOSE);
  }
  
  void display() { 
    pushMatrix();
    scale(0.05); //Scales the shape to make it smaller (EDITED)
    translate(x, y); 
    shape(s); 
    popMatrix();
  }
  
}