void setup(){
  size(700, 700);
  
}


void draw(){

}

int keyBrd = 1;



void keyPressed(){
  println(key);
  
  //Change the stroke width of the figure from 1 - 10, where '0' is strokeWeight(10).
  if(key == '='){
    text( keyBrd, 50, 50);
    strokeWeight (keyBrd ++);
  } else if ( key =='-'){
    if(keyBrd > 0){
      strokeWeight( keyBrd--);
    } else if (keyBrd < 0){
      text( "Stroke can not be negative", width / 4, height/4);
    }
  }
  
//Assign RGB colors to "r","g","b" for the STROKE
  if(key == 'r'){
    stroke(255,0,0);
  } else if(key == 'g'){
    stroke(0,255,0);
  } else if(key == 'b'){
    stroke(0,0,255);
  }
  
  //Draw a red figure to fill with red->'t' , green->'h', blue->'n'
  if(key == 't'){
    fill (255,0,0);
    //if (key == 's'){
    //  rect(mouseX ,mouseY , 100,100);
    //}else if(key == 'e'){
    //  ellipse( width/2, height/2, 100, 100);
    //}
  } else if(key == 'h'){
    fill (0,255,0);
    //if (key == 's'){
    //  rect(width/2 ,width/2 , 100,100);
    //}else if(key == 'e'){
    //  ellipse( width/2, height/2, 100, 100);
    
  } else if(key == 'n'){
    fill (0,0,255);
    //if (key == 's'){
    //  rect(width/2 ,width/2 , 100,100);
    //}else if(key == 'e'){
    //  ellipse( width/2, height/2, 100, 100);
    //}
  } 
  
  //Choose to draw a square or a circle by pressing "s" and "e"
  if(key == 's'){
    rect(mouseX, mouseY, 100, 100);
  } else if(key == 'e'){
    ellipse(mouseX, mouseY,100, 100);
  }
  
  //To RESET ALL changes
  if(key == '`'){
    fill(255,255,255);
    stroke(0,0,0);
  }
  
  
  
}


//it is not possible to nest void into other function.
//There is no need to declare drawing squares and ellipses in fill, because of cascading nature of processing
//declared squares and ellipses were declared later.
//How to change the stroke with two buttons?
//How to change the brightness of the color with up and down buttons? or append/input a HEX/RGB colors?