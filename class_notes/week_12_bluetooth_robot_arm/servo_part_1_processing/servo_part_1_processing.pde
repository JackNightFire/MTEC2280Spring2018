import processing.serial.*;  // import serial library
 
Serial myPort;  // Create object from Serial class
int val;        // Data received from the serial port
int xSpeed;
int x;
int y;
int posX;
int posY;
int posZ;
void setup()
{
  frameRate(100);
  size(500, 500);
  // remember to set your serial port...
  printArray(Serial.list());

  myPort = new Serial(this, Serial.list()[0], 9600);
 
  // basic drawing properties
  fill(255);
  noStroke();
}
 
void draw() {
  background(255,0,0);
  
  ellipse(x,y,40,40);
  // map the mouse position from 0 -> window width to a range of degrees for the servo
  // the servo can handle 180 degrees, but I think the pointer is better with a limited range
  //int posX = int(map(mouseX,0,width,60,120));
  //int posY = int(map(mouseY,0, height, 60, 120));
  //int posZ = int(map(mouseY, 0, height, 0, 80));\
  if(keyPressed){
   
    println(keyCode);
    
    if(key == 'r'){
      posX = 0;
      posY = 0;
      posZ = 0;
    }  else if( key == 'm'){
      posY = 90;
      posX = 90;
      posZ = 60;
    } else if( key == 'n' ){
      posY = 180;
      posX = 100;
      posZ = 25;
  }
  }
  myPort.write(posX);  // write x and y vars to serial
  myPort.write(posY);
  myPort.write(posZ);
}

//void keyPressed () {
//  if (key == CODED){
//    if(keyCode == LEFT){
//      posX = 180;
//    } else if( keyCode == RIGHT){
//      posX = 0;
//    }
//  }
//}