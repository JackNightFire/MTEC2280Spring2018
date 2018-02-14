void setup(){
  size(700, 700);
  
  frameRate(2);
}

int keyBrd = 1;
int colorValue = 0;


void keyPressed(){
  println(key);
  
  
  //Change the stroke width of the figure;
  if(key == '='){
    println(keyBrd);
    text( keyBrd, 50, 50);
    strokeWeight (keyBrd ++);
  } else if ( key =='-'){
    if(keyBrd > 0){
      println(keyBrd);
      strokeWeight( keyBrd--);
    } else if (keyBrd < 0){
      text( "Stroke can not be negative", width / 4, height/4);
    }
  }
  
//Assign RGB colors to "r","g","b" for the STROKE
  if(key == 'r'){
    stroke(colorValue,0,0);
  } else if(key == 'g'){
    stroke(0,colorValue,0);
  } else if(key == 'b'){
    stroke(0,0,colorValue);
  }
  
  //Draw a red figure to fill with red->'t' , green->'h', blue->'n'
  if(key == 't'){
    fill (colorValue,0,0);
    //if (key == 's'){
    //  rect(mouseX ,mouseY , 100,100);
    //}else if(key == 'e'){
    //  ellipse( width/2, height/2, 100, 100);
    //}
  } else if(key == 'h'){
    fill (0,colorValue,0);
    //if (key == 's'){
    //  rect(width/2 ,width/2 , 100,100);
    //}else if(key == 'e'){
    //  ellipse( width/2, height/2, 100, 100);
    
  } else if(key == 'n'){
    fill (0,0,colorValue);
    //if (key == 's'){
    //  rect(width/2 ,width/2 , 100,100);
    //}else if(key == 'e'){
    //  ellipse( width/2, height/2, 100, 100);
    //}
  } 
    
  //To RESET ALL changes
  if(key == '`'){
    fill(255,255,255);
    stroke(0,0,0);
  }
  
  if(key == ']'){
     println(colorValue); 
    colorValue += 10;
  } else if (key == '['){
    println(colorValue);
    colorValue -= 10;
  }
   
}

 

void draw(){
  background(255);
  
  float x = random(width);
  float y = random(height);
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float size = random(100);

   
   if(key == 's'){
    rect(x, y, size, size);
  } else if(key == 'e'){
    ellipse(x, y, size, size);
  }
  
}


//it is not possible to nest void into other function.
//There is no need to declare drawing squares and ellipses in fill, because of cascading nature of processing
//declared squares and ellipses were declared later.
//How to change the stroke with two buttons?
//How to change the brightness of the color with up and down buttons? or append/input a HEX/RGB colors?