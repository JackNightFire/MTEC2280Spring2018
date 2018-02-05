void setup(){
  size(500, 500);
  strokeWeight(4);
}


//the purpose of the draw function is to output whatever is in {}.

void draw (){
  //line drawing mode
  //pmouse -> (previous mouse)used to determine the last position of the mouse. 
  //line(mouseX, mouseY, pmouseX, pmouseY);
  
  
  //circle drawing mode
  //ellipse(mouseX,mouseY,20,20);
  //println(mouseX, mouseY);
  
}

void mouseMoved(){
  line(mouseX, mouseY, pmouseX, pmouseY);
}


////listens for dragging mouse event
//void mouseDragged(){
//  line(mouseX, mouseY, pmouseX, pmouseY);
//}

void keyPressed(){
  println(key);
  //conditional for a key pressed, if '=' pressed execute {}
  if(key == '='){
    strokeWeight(10);
  //else if some condition is true execute {}  
  } else if (key == '-'){
    strokeWeight(5);
  }
  
  if(key == 'r'){
    stroke(255,0,0);
  }else if(key == 'g'){
    stroke (0,255,0);
  }
  
  if(key == 's'){
    save("line.tif");
  }
  
}