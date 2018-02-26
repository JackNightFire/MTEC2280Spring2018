//void setup(){

//}

//void draw(){

//}

size(500, 500);
for(int i = 0; i < 100; i++){
//  float x1, x2, y1, y2;
//  x1 = random(width);
//  x2 = random(width);
//  y1 = random(height);
//  y2 = random(height);
//  line (x1, x2, y1, y2); 

//Resets your origin
  float x1, x2, y1, y2;
  x1 = random(width);
  y1 = random(height);
  x1 = x1 + 10;
  y2 = y1 + 10;
  
  
  //anytime you rotate push matrix
  pushMatrix();
  //
  translate(x1,y1);
  rotate(random(TWO_PI));
  
  line(0, 0, 10, 10);
  //close matrix
  popMatrix();
}