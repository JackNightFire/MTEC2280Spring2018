/*
  Reccreate the Sol Lewwitt Line Drawing in Processing.
*/

int x, y;
int x1, y1;
int count = 1;


void setup(){
  size(500, 500);
 
}

void draw(){
  
  //Create a rectangle with black outline
   stroke(0);
   rect(10, 10, 480, 480);
   
   //Create a red line
   stroke(255,0,0);
   line(10, height/2 - 10, width/2, height/2 - 10);
   
}