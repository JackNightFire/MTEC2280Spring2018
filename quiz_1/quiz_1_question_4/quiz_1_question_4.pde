

float x, y, red, green, blue;
  

void setup(){
  size(500, 500);
  x = width;
  y = height;
  red = 255;
  green = 255;
  blue = 255;
  
  noStroke();
}

void draw(){
  
}

void keyPressed(){
  println(key);
  
  //Draw random circle in random places when x key is pressed
  if(key == 'x'){
    x = random(width);
    y = random(height);
    red = random(255);
    green = random(255);
    blue = random(255);
    fill(red, green,blue);
    ellipse(x, y, 50, 50);
  } 
  //Change backgrounf to random color when b key is pressed
  else if( key == 'b'){
    red = random(255);
    green = random(255);
    blue = random(255);
    background(red, green, blue);
  }
}