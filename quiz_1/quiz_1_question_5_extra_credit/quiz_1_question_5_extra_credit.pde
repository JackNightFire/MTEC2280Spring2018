

int size = 1;
int sizePr;
int sizePt;
boolean circExpan = false;
boolean circShrin = false;

void setup(){
  size (500, 500);
}

void draw(){
  background(0);
  
  //Conditional to expand or decrease the size of the circle.
  if(circExpan){
     size++;
   } 
   if(circShrin){
     size--;
   } 
   //Conditional to set  circExpan or circShrin to true or false;
  if(size < width && size < height){
    //if(  ){
      
    //} else if(){
      
    }
  } 
  
  
   
   
   
  
  ellipse(width/2, height/2, size, size);
  println(size);
  
}