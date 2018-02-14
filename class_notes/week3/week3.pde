//1.Add another ball
//2. Change the background with every collision
//3.Change to a square/ellipse with every collision.

//Variable scope is the existence of a variable in/out of a function. 
//Global scope is when variable lies outside of a function.

//Declare a variable globally and initialize it internally in a function.
float x;
float y;
float xSpeed;
float ySpeed;
float x1;
float y1;
float x1Speed;
float y1Speed;
float bckgrndClr;

float bgRed, bgGreen, bgBlue;

void setup(){
  size(500, 500);
  //Initialize the variable in function, so it can work with setup() and globally with draw()
  x = width/2;
  y = height/2;
  x1 = 0;
  y1 = 0;
  xSpeed = random(2,5);
  ySpeed = random(2,5);
  
  x1Speed = random (2, 5);
  y1Speed = random (2, 5);
  
  bckgrndClr = 0;
  
  bgRed = 255;
  bgBlue = 255;
  bgGreen = 255;
}



void draw(){
  //background(bckgrndClr);
  
  background(bgRed, bgGreen, bgBlue);
  
  //Change the x position.
  x = x + xSpeed;
  x1 = x1 + x1Speed;
  //Change the y position.
  y = y + ySpeed;
  y1 = y1 + y1Speed;
  
  /*===
  BALL#1
  =====*/
  //Collision on x - axis
  if(x >= width){
    //collision
    xSpeed = xSpeed * -1;
    //or
    //xSpeed = - xSpeed;
  } else if(x <= 0){
    xSpeed = xSpeed * -1;
  }
  //Colision of y-axis;
  if(y >= width){
    //collision
    ySpeed = ySpeed * -1;
    //or
    //xSpeed = - xSpeed;
  } else if(y <= 0){
    ySpeed = ySpeed * -1;
  }
  //First Ellipse
  ellipse(x,y,20,20);
  
  /*======
  BALL #2
  =========*/
  if(x1 >= width){
    //collision
    x1Speed = x1Speed * -1;
    //or
    //xSpeed = - xSpeed;
  } else if(x1 <= 0){
    x1Speed = x1Speed * -1;
  }
  //Colision of y-axis;
  if(y1 >= width){
    //collision
    y1Speed = y1Speed * -1;
    //or
    //xSpeed = - xSpeed;
  } else if(y1 <= 0){
    y1Speed = y1Speed * -1;
  }
  //Second Ellipse
  ellipse(x1, y1, 20, 20);
  
  /*=========
  Change Background
  ==========*/
  if(x >= width || x1 >= width || x <= 0 || x1 <= 0){
    //bckgrndClr = random(255);
    //background(bckgrndClr, random(255), random(255)); 
    
    bgRed = random(255);
    bgGreen = random(255);
    bgBlue = random(255);
  } 
  if(y >= height || y1 >= height || y <= 0 || y1 <= 0){
    //bckgrndClr = random(255);
    //background(bckgrndClr, random(255), random(255)); 
  } 
  
  
  
}