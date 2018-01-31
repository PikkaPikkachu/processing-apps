/**
* Author: Prakrit Bansal
*
* A class to describe a spherical shape
*/

class Sphere {

  // The PGraphics object
  PGraphics s;
  
  // The location where we will draw the shape
  float x, y, z; 
  
  // Pointlight colors used for the shape 
  int r, g, b;
  
  //Size of the sphere 
  int size;

  Sphere(float x1, float y1, float z1, int r1, int g1, int b1, int size1) {//edited 
    x = x1;
    y = y1; 
    z = z1;
    r = r1;
    g = g1;
    b = b1;
    size = size1;
  }
  
  void drawSphere() { 
    s = createGraphics(width, height, P3D);
    s.beginDraw();
    s.lights(); //shadow visible 
    s.noStroke();
    s.pointLight(r, g, b, width/2, height/2, 400); //lights a particular part 
    s.translate(x, y, z);
    s.rotateX(frameCount/50.0); //causes rotation
    s.rotateY(frameCount/50.0);
    s.sphere(size); //spherical shape 
    s.endDraw();
  }
  
  void display() {
    drawSphere();
    image(s, 0, 0);
  }
}