void setup(){
  size(700, 700);
  
}


void draw(){

}

void mouseMoved() {
  
}

void keyPressed(){
//Assign RGB colors to "r","g","b"
  if(key == 'r'){
    stroke(255,0,0);
  } else if(key == 'g'){
    stroke(0,255,0);
  } else if(key == 'b'){
    stroke(0,0,255);
  }
  
  //Choose to draw a square or a circle by pressing "s" and "r"
  if(key == 's'){
    rect(mouseX, mouseY, abs(pmouseX - width/2)*2,abs(pmouseX - width/2)*2);
  } else if(key == 'e'){
    ellipse(mouseX, mouseY,abs(pmouseX - width/2)*2,abs(pmouseX - width/2)*2);
  }
}