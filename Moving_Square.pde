
  int x;
  int y;
  int red;
  int green;
  int blue;
  int red2;
  int green2;
  int blue2;
  
  void setup(){
  size(200, 200);
  noStroke();
  frameRate(60);
  x=0;
  y=149;
  red = 150;
  green = 200;
  blue = 150;
  red2 = red;
  green2 = green;
  blue2 = blue;
  }
  
  void draw(){
  
  background(255,255,255);
  rect(x, 20, 50, 50);
  fill(red++, green, blue);
  if(red >=255){
    red =0;
    green++;
  }
  if(green >=255){
    green =0;
    blue++;
  }
  if(blue >=255){
  blue =0;
  red++;
  }
  if(x>150){
  rect(x-200, 20, 50, 50);
  }
  if(x++>=199)x=0;
  
  rect(y, 140, 50, 50);
  fill(red2, green2, blue2--);
  if(blue2 <=0){
    blue2 =255;
    green2--;
  }
  if(green2 <=0){
    green2 =255;
    red2--;
  }
  if(red2 <=0){
  red2 =255;
  blue2--;
  }
  if(y<50){
    rect(y+200, 140, 50, 50);
  }
  if(y--<=-50)y=y+200;
  }
