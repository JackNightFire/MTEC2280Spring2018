size(700, 700);

//Vertical lines
for(int i = 0; i < width; i += 10){
  line(i, 0, i, height);
}

//Horizontal lines
for(int j = 0; j < height / 2; j += 10){
  line(width/ 2, j, width, j);
  line(0, height/2 + j, width, height/ 2 + j);
}

//Diagonal from right to left
for(int k = 0; k < width*3; k += 10){
  line(k, height/ 2, 0, height/2 + k);
}


//Diagonal from left to right
for(int l = width/2; l > 0; l -= 10){
  line(width - l, height/2, width,   height/2 + l);
  line(width - l, height, width/2, height/2 + l);
  println(l);
}