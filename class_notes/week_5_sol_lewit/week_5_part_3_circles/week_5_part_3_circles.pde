size(500,500);
noFill();
int radius = 0;
for(int i = 0; i < width * 3; i += 5){
  //top circle
  ellipse(width/2, 0, i, i);
  //left circle
  ellipse(0, height/2, i, i);
  //bottom circle
  ellipse(width/2, height, i, i);
  //right circle
  ellipse(width, height / 2, i, i);
}