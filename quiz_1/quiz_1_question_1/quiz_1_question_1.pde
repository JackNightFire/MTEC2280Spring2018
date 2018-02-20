//Create a sketch that is 500x500. make the left half of the widow black
//and the reight half yellow. additionally, print a random whole number to the console.



void setup(){
  size(500, 500);
  
  frameRate(5);
}

void draw(){
  //Create Black Rectangle on the left side of the window
  fill(0);
  rect(0 , 0, width/2, height);
  
  //Create Yellow Rectangle on the right side of the winodw
  fill(255,255, 0);
  noStroke();
  rect(width/2, 0 , width/2, height);
  
  println((int)random(9999999));
}