/* @pjs preload="m1area1.png"; */

PImage img;

float goal = 3;
float currentAmount = 1;
float percentage;

void setup() {
  img = loadImage("m1area1.png");
  img.resize(img.width/3, img.height/3);
  size(img.width,img.height);
  percentage = currentAmount/goal;
  
  frameRate(30);
}

void draw() {
  background(240);
  image(img, 0, 0);
  strokeWeight(1);
  stroke(0, 255, 0);
  fill(0,255,0,255/4);
  rect(-1,-1,img.width*percentage,img.height+1);
}
