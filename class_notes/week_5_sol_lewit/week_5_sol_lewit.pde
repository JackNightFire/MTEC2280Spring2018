/*
  FOR LOOP
*/

//void setup(){
//colorMode(RGB, width) //creates  a scale of color from darkest to lightest.
//}

//void draw(){

//}

size(500, 500);

for( int i = 0; i < width; i+=2){
  line(i, 0, i, height);
  
}

for(int j = 0; j < height; j+=2){
  line(0, j, width, j);
}