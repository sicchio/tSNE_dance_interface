import ddf.minim.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer groove;

PImage img;



float zoomLevel = 5;

float X = 0;
float Y = 0;

void setup() {
  img = loadImage("tsne_grid_perf.png");

  size(500,500);
  
  minim = new Minim(this);
  groove = minim.loadFile("noise.wav", 2048);
}


void draw() {

  groove.play();

  background(255);
    
noCursor();
  
  // new width and height
  float imgWidth = img.width*zoomLevel;
  float imgHeight = img.height*zoomLevel;
  
  // how much can't be shown?
  float cutOffWidth = imgWidth-width;
  float cutOffHeight = imgHeight-height; 
  
  float xOffset = map(mouseX, 0, width, 0, -cutOffWidth);
  float yOffset = map(mouseY, 0, height, 0, -cutOffHeight);
  
 //if (key == CODED){
 //  if (keyCode == RIGHT){
 //  if (keyPressed == true){
 //X =+5; }
 //  }
 //}
  
 //  if (key == CODED){
 //  if (keyCode == LEFT){
 //  if (keyPressed == true){
 //X =-5; }
 //  }
 //}
 
 //if (key == CODED){
 //  if (keyCode == UP){
 //  if (keyPressed == true){
 //Y =+5; }
 //  }
 //}
 
 //if (key == CODED){
 //  if (keyCode == DOWN){
 //  if (keyPressed == true){
 //Y =-5; }
 //  }
 //}
  
  
  
  image(img, xOffset, yOffset, imgWidth, imgHeight);
}