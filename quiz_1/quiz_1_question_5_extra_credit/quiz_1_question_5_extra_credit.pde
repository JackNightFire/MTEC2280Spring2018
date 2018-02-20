

int size = 1;
boolean circExpan;
boolean circShrin;

void setup(){
  size (500, 500);
}

void draw(){
  background(0);
  
  //Increase the circle by 1 until it hits the wall
  if(size < width && size < height){
    circExpan = true;
  } 
  //Decrease the circle by 1 when it hits the wall;
   else if(size >= width && size >= height){
    circShrin = true; 
   }
   
   if(circExpan){
      size++;
    } 
    else if(circShrin){
      size--;
    } 
   
  
  ellipse(width/2, height/2, size, size);
  println(size);
  
}