/**
* Author: Prakriti Bansal
* A class for Piano! 
* Note: 
*/
import processing.sound.*;
SoundFile a, b, c, d, e, f, g, bb, eb, fS, gS, cS ;

PImage img;

void setup() {
  size(700, 700);
  background(0);
  img = loadImage("piano.jpg");
  // Load a soundfile from the /data folder of the sketch and play it back
  a = new SoundFile(this, "a.wav");
  b = new SoundFile(this, "b.wav");
  c = new SoundFile(this, "c.wav");
  d = new SoundFile(this, "d.wav");
  e = new SoundFile(this, "e.wav");
  f = new SoundFile(this, "f.wav");
  g = new SoundFile(this, "g.wav");
  cS = new SoundFile(this, "cSharp.wav");
  eb = new SoundFile(this, "eb.wav");
  fS = new SoundFile(this, "fSharp.wav");
  gS = new SoundFile(this, "gSharp.wav");
  bb = new SoundFile(this, "bb.wav");
}      

void draw() {
   textSize(20);
   fill(255);
   text("To play (the first 2 lines) Happy Birthday, press the following Keys!", 10, 50);
   text("a a b a d C", 10, 80);
   text("a a b a e d", 10, 100);
   
   text("To play Jingle Bells, press the following Keys!", 10, 140);
   text("e e e e e e e g c d e", 10, 160);
   text("f f f f f e e e d d e d g", 10, 180);
   
   text("Now compose your own music!", 10, 215);
   textSize(15);
   text("Note: The keys to be pressed are shown above the notes on piano.", 10, 230);
   image(img,10,240);
   
}

 void keyPressed() {
   if (key == 'a'){
     a.play();
   }
   if (key == 'b'){
     b.play();
   }
   if (key == 'c'){
     c.play();
   }
   if (key == 'd'){
     d.play();
   }
   if (key == 'e'){
     e.play();
   }
   if (key == 'f'){
     f.play();
   }
   if (key == 'g'){
     g.play();
   }
   if (key == 'G'){
     gS.play();
   }
   if (key == 'B'){
     bb.play();
   }
   if (key == 'C'){
     cS.play();
   }
   if (key == 'F'){
     fS.play();
   }
   if (key == 'E'){
     eb.play();
   }
 }