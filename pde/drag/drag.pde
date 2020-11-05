//file icon
PImage fileIcon;
int iconScale = 5;
int iconWidth = 334/iconScale;
int iconHeight = 446/iconScale;



void setup(){
  size(640,360);
  frameRate(60);
  
  fileIcon = loadImage("file.png");
}


void draw(){
  background2();
  image(fileIcon,mouseX-iconWidth/2,mouseY-iconHeight/2,iconWidth,iconHeight);
  stroke(153);
  fill(153);
  //icon()
  rect(mouseX-iconWidth/2,mouseY-iconHeight/2,iconWidth,iconHeight);
}

//draw background
void background2(){
  background(255);
  rectMode(CORNER);
  strokeWeight(0);
  fill(135,149,163);
  rect(0, 0, 640, 360);  //  CORNER モードで白い四角形を描く
  fill(255);
  rect(5, 5, 630, 350);  //  CORNER モードで白い四角形を描く
}


//callbuck mouse pressed
void mousePressed(){
  fill(255,0,0);
  if(mouseButton == LEFT) ellipse( mouseX, mouseY,30,30);
}
