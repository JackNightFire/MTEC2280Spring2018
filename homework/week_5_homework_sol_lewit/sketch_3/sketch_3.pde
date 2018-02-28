

size(500, 500);
background(255);
strokeWeight(20);

//horizontal lines
for(int i = 0; i < height/ 2; i+=40){
  line(0, i, width, i);
}

//vertical lines
for(int j = 0; j < width; j+=40){
  line(j, height/ 2, j, height);
}