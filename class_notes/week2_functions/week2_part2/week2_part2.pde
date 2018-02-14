void setup(){
  size (700, 700);
  
  noStroke();
  
  //frameRate is something that is running.
  
  frameRate(random(20));
}


void draw(){
  //float x is creating a variable and assigning a value to it.
  //To create a varibale it needs a name, type, and a value.
  //Processing is precise enough, so there is no need for a decimal precision
  //when applying value to float
  // ==>float x = 200;
  
  //nested functions, to create a random colors for fill.
  // fill(random(255),random(255),random(255)); 
  
  //random() is a function that creates a random FLOAT number
  //random(width) creates a number between 0 and width;
  float x = random(width);
  float y = random(height);
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float size = random(100);
  
  
  fill(r,g,b);
  
  ellipse(x, y, size,size);
  
  fill(g,b,r);
  
  rect(y, x, size, size);
  
  //rectMode() tells the browser to choose where the rectangle strats from.
  //rectMode (CENTER);
  //rect(x - size/2 ,y + size/2 , size , size);
  
  
}







//NOTES
//CMND + T - shortcut to indent