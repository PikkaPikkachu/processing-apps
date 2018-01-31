/**
* Author: Prakriti Bansal
* Date created: 16th April 2016
* A class displaying word "LIFE" in different fonts 
*/

size (600, 500);
background(0);

PFont myFont;

//Creates a comic effect
//shows life as fun and joyful
myFont = loadFont("NanumPen-120.vlw");
textFont (myFont);
fill(255);
text("LIFE", 180, 100);


//Creates a serious, somber effect
//shows life as serious and kind of scary
myFont = loadFont("Tiger-120.vlw");
textFont (myFont);
fill(255);
text("LIFE", 90, 250);


//Creates a calm, soothing effect due to the fluidity of font
myFont = loadFont("SnellRoundhand-Bold-100.vlw");
textFont (myFont);
fill(255);
text("Life", 180, 400);