/**
* Author: Prakriti Bansal
*
* Date created: 11 April 2016
* A program displaying a simplified version of Solar System and gravitational fields of planets
*
* Tutorials Used: PShapes (by Daniel Shiffman), P3D (by Daniel Shiffman), 
*                 Trignmetry Primer (by Ira Greenberg), String and Drawing Text (by Daniel Shiffman)
*                 Arrays (by Casey Reas and Ben Fry) and 2D Transformations (by J David Eisenberg)
**/

float px, py, px2, py2, px3, py3, px4, py4;
float angle, angle2;
float radius = 150;
float radius2 = 50;
float frequency = 1;
float frequency2 = 3;
boolean collided= false;
boolean collided2= false;

Star [] stars = new Star[500];
Cube [] asters = new Cube[5];
Sphere a1, a2, a3, a4;
Circle c;

void setup(){
  size(900, 700, P3D);
  background (0);
  //array of star with random color, spread all over the window
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star(int(random(0, 20000)), int(random(0, 20000)), 
                        int(random(0, 255)), int(random(0, 255)), 
                        int(random(0, 255)));
  }
  //array of asteroids randomly spread out through space
  for (int i = 0; i < asters.length; i++){
    asters[i] = new Cube(int(random(0, 900)), int(random(0, 700)), 
                        int(random(-1, 1)), int(random(0, 255)), 
                        int(random(0, 255)), int(random(0, 255)));
  }
  // a circular comet of random color and speed!
  c= new Circle (color(int(random(200, 255)), color(int(random(100, 255)), color(int(random(150, 255))))), 50, 0,int(random(-5, 5)), int(random(-5, 5)) );
}

void draw(){
  background (0);// backgound set to black
  translate(0, -mouseY,  mouseX * 0.70); // allows user to zoom in and move up/down 
  
  //create sphere for the Sun! 
  a1 = new Sphere(width/2, height/2, 0, 255, 255, 0, 75); //yellow pointlights 
  
  //create sphere for the earth!
  px = width/2 + cos(radians(angle))*(radius); //makes sun the center and causes rotation
  py = height/2 + sin(radians(angle))*(radius);
  a2 = new Sphere(px, py, 0, 0, 255, 0, 30); //green pointlights
  
  //creates sphere for the moon!
  px2 = px + cos(radians(angle2))*(radius2); //makes earth the center and causes rotation
  py2 = py + sin(radians(angle2))*(radius2);
  a3 = new Sphere(px2, py2, 0, 127, 127, 127, 10); //grey pointlight
  
  //creates sphere for another planet...
  px3 = width/2 + sin(radians(angle))*(300); // makes sun the center and causes rotation 
  py3 = height/2 + cos(radians(angle))*(300); //in different direction than earth
  a4 = new Sphere(px3, py3, 0, 0, 255, 255, 40); //blue pointlights
  
  angle += frequency; // increases angle with specified frequency for rotation
  angle2 += frequency2;
 
 //if comet collides with Sun.. Sun becomes red (red pointlights)
 if(c.xpos< width/2+75 && c.xpos> width/2- 75 && c.ypos< height/2+75 && c.ypos> height/2- 75){
   a1 = new Sphere(width/2, height/2, 0, 255, 0, 0, 75);
 }
 
 /**
 * Different actions that take place when comet collides...
 */
 
 //if comet collides with Earth.
 if(c.xpos< px+30 && c.xpos> px- 30 && c.ypos< py+30 && c.ypos> py- 30){
   collided = true;
 }
 if (collided){//the size of Earth increases when comet collides
   a2 = new Sphere(px, py, 0, 0, 255, 0, 35);
 }
 
 //if comet collides with Planet
 if(c.xpos< px3+40 && c.xpos> px3- 40 && c.ypos< py3+40 && c.ypos> py3- 40){
   collided2 = true;
 }
 if (collided2){//the comet becomes satellite of the planet and rotates around it
   px4 = px3 + cos(radians(angle2))*(75);
   py4 = py3 + sin(radians(angle2))*(75);
   c= new Circle (color(int(random(0, 255)), color(int(random(0, 255)), color(int(random(0, 255))))), px4, py4, 0, 0); //makes comet satellite 
 }
 
 
 if(keyPressed== true){//increases the speed of the comet when key is pressed 
   c.xspeed++;
   c.yspeed++;
 }
 
 if(angle2<720){ //instruction displayed for user 
   textSize(20);
   fill(255);
   text("Move the mouse mouse across to zoom in!", 10, 50);
   text("Move the mouse mouse down to move up and down!", 10, 70);
   text("Press any key to increase the speed of comet!", 10, 90);
 }
 
  /**
  *Displays all the objects in the solar system! 
  */
  
  for (int i = 0; i < stars.length; i++){ 
    stars[i].display();
  }
  
  for (int i = 0; i < asters.length; i++){
    asters[i].display();
  }
  
  a1.display();
  a2.display();
  a3.display();
  a4.display();
  c.display();
  c.move();

}