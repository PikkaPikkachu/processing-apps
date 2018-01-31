//A program based on trig tutorial by Ira Greenberg
//Edited: Prakriti Bansal

float px, py, px2, py2, px3, py3;
float angle, angle2;
float radius = 50;
float frequency = 1;
float x;

Star s1, s2, s3; 

void setup(){
  size(800, 200);
  background (0);
}

void draw(){
  
  //FIRST FLOWER 
  noFill();
  noStroke();
  ellipse(width/6, 100, radius*2, radius*2);
  
  // Rotates star in a circle
  px = width/6 + cos(radians(angle))*(radius);
  py = 100 + sin(radians(angle))*(radius);
  s1 = new Star(px, py, 255, 0, 255);
 
 //SECOND FLOWER  
  noFill();
  noStroke();
  ellipse(width/2, 100, radius*2, radius*2);
  
  // Rotates star in a circle
  px2 = width/2 + cos(radians(angle))*(radius);
  py2 = 100 + sin(radians(angle))*(radius);
  s2 = new Star(px2, py2, 0, 255, 255);
  
  //THIRD FLOWER 
  noFill();
  noStroke();
  ellipse(width-width/6, 100, radius*2, radius*2);
  
  // Rotates star in a circle
  px3 = width-width/6 + cos(radians(angle))*(radius);
  py3 = 100 + sin(radians(angle))*(radius);
  s3 = new Star(px3, py3, 255, 255, 0);
  
  //stem formation
  fill(0, 255, 0);
  ellipse(x, py, 10, 10);
  angle += frequency;
  x+=1;
 
  // When little ellipse reaches end of window,
  // set the variables back to 0
  if (x >= width-60) {
    x = 0;
    angle = 0;
  }
  
  if(angle>=360){
    s1 = new Star(px, py, 255, 125, 255);
    s2 = new Star(px2, py2, 125, 255, 255);
    s3 = new Star(px3, py3, 255, 255, 125);
  }
  
  s1.display();
  s2.display();
  s3.display();

}