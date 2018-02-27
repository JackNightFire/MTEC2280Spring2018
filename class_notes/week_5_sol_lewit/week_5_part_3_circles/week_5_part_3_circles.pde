size(500,500);
noFill();

for(int i = 0; i < width * 3; i += 10){
  //top circle
  ellipse(width/2, 0, i, i);
  //left circle
  ellipse(0, height/2, i, i);
  //bottom circle
  ellipse(width/2, height, i, i);
  //right circle
  ellipse(width, height / 2, i, i);
  //top left corner
  ellipse(0, 0, i, i );
  //top right corner
  ellipse(width, 0 , i, i);
  //bottom right corner
  ellipse(width, height, i , i);
  //bottom left corner
  ellipse(0, height, i, i );
}