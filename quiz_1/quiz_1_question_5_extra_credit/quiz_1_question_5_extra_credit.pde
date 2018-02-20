

int size = 1;

void setup(){
  size (500, 500);
}

void draw(){
  background(0);
  
  //Increase the circel by 1 until it hits the wall
  if (size < width && size < height){
    size ++;
    ellipse(width/2, height/2, size, size);
  } 
  
  //Decrease the circle by 1 when it hits the wall;
   if(size >= width && size >= height){
    size--;
    ellipse(width/2, height/2, size, size);
  }
  
  println(size);
  
}