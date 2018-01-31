color c = color(0);
float x = 0;
float y = 100;
float speed = 1;
//Tutorial from Processing Overview by Ben Fry and Casey Reas
//Edited: the position of point & added mouseDragged() to add ellipse
void setup() {
       size(400, 400);
       stroke(255);
     }
      
     void draw() {
       line(200, 200, mouseX, mouseY);
     }
     
     void mousePressed() {
       background(192, 64, 0);
     }
     
     void mouseDragged() {
       background(164, 64, 0);
       fill(164, 64, 0);
       ellipse(200, 200, mouseX, mouseY);
     }
     
 