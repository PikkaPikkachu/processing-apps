/**
* Author: Prakrit Bansal
*
* A class to describe a cuboidal shape
*/

class Cube {

  // The PGraphics object
  PGraphics s;
  // The location where we will draw the shape
  float x, y, z; 
  // Pointlight colors used for the shape 
  int r, g, b; 

  Cube(float x1, float y1, float z1, int r1, int g1, int b1) {//edited 
    x = x1;
    y = y1; 
    z = z1;
    r = r1;
    g = g1;
    b = b1;
  }
  
  void drawCube() { 
    s = createGraphics(width, height, P3D);
    s.beginDraw();
    s.lights(); //shadows visible 
    s.noStroke();
    s.pointLight(r, g, b, width/2, height/2, 400); //lights a paricular part 
    s.translate(x, y, z);
    s.rotateX(frameCount/50.0); //causes rotation 
    s.rotateY(frameCount/50.0);
    s.box(15, 10, 20); //cuboid shape 
    s.endDraw();
  }
  
  void display() {
    drawCube();
    image(s, 0, 0);
  }
}