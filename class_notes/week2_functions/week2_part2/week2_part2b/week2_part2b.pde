void setup(){
  size(600, 600);
  
  //convert random floating number into integer with int(random());
  //rounding from float to integer always happens down to whole number, i.e. 1.99 = 1;
  //int coin = int(random(2));
  
  //println(coin);
  
  textAlign(CENTER);
  textSize(100);
}

void draw(){
  //Sometimes there is no need to use floats.
  
}

void keyPressed(){
  int coin = int(random(2));
  background(0);
  
  if(coin == 0){
    //text() outputs text onto canvas. It takes three inputs of (text , x , y);
    //text() position starts at bottom left.
    text("tails", width/2, height/2);
    println("tails");
  } else if(coin == 1){
    text("heads", width/2, height/2);
    println("heads");
  }
  
  
}