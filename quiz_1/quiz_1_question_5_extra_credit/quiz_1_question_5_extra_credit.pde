float circleD = 1;
float circleSpeed = 5;

void setup() {
  size(600,600);
}

void draw() {
  circleD = circleD + circleSpeed;
  
  // if circle grows too much
  if(circleD > width) {
    circleSpeed = circleSpeed * -1;
  }
  
  // if circle shrinks too much
  if(circleD < 0) {
    circleSpeed = circleSpeed * -1;
  }
  
  background(0);
  
  ellipse(width/2,height/2,circleD,circleD);
}