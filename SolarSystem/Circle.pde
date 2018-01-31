/**
* Author: Prakrit Bansal
*
* A class to describe a circular shape in motion 
*/

class Circle {

  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;

  Circle(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    ellipse(xpos,ypos,30,30);
  }

  void move() {
    xpos = xpos + xspeed; //increases position in X direction
    
    ypos = ypos + yspeed; //increases position in Y direction
    
    if (xpos > width || xpos<0) {
      xspeed = -xspeed; //makes shape bounce off from edge 
    }
    if (ypos > height || ypos<0) {
      yspeed = -yspeed; //makes shape bounce off from edge 
    }
  }
  
}