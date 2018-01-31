//Author: Prakriti Bansal 
//Date created: April 5th 2016
/** Edited: Added Yspeed, frictional force (causing deceleration) and bounce 
*   from the edge effect and 3 more cars with different color.
*/

Car myCar1;
Car myCar2; // Two objects!
Car myCar3;
Car myCar4;
Car myCar5;

void setup() {
  size(400,400);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),0,100,2, 1, 0.001); 
  myCar2 = new Car(color(0,0,255),0,150,1, 1.5, 0.005);
  myCar3 = new Car(color(0, 255, 0), 0, 200, 0.5, 2, 0.003);
  myCar4 = new Car(color(255, 255, 125), 0, 300, 1.5, 1, 0.001);
  myCar5 = new Car(color(90, 255, 255), 0, 350, 2, 0.3, 0.004);
}

void draw() {
  background(255);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
  myCar3.drive();
  myCar3.display();
  myCar4.drive();
  myCar4.display();
  myCar5.drive();
  myCar5.display();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float xfriction;

  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed, float tfrictionx) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
    xfriction = tfrictionx;
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,40,20);
  }

  void drive() {
    xpos = xpos + xspeed;
    
    ypos = ypos + yspeed;
    
    if(xspeed>0){
      xspeed = xspeed - xfriction;
    }
    
    if(yspeed>0){
      yspeed = yspeed - 0.001;
    }
    
    if (xpos > width || xpos<0) {
      xspeed = -xspeed;
    }
    if (ypos > height || ypos<0) {
      yspeed = -yspeed;
    }
  }
}
   