PGraphics sphere;

void setup() {
  size(400, 400, P3D);
  
  noStroke();
  colorMode(RGB, 1);
  sphere = createGraphics(width, height, P3D);
}

void draw() {
  background(0); 
  drawCube();
  image(sphere, 0, 0);
}

void drawCube() { 
  
  sphere.beginDraw();
  
  sphere.lights();
  sphere.background(150);
  sphere.noStroke();
  sphere.colorMode(RGB, 1);
  sphere.pointLight(255, 0, 0, width/2, height/2, 400);
  
  sphere.translate(width/2, height/2);
  sphere.rotateX(frameCount/50.0);
  sphere.rotateY(frameCount/50.0);
  sphere.box(150);
  sphere.endDraw();
}