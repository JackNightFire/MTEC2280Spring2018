/*
  Create sketch that draw lines that go from corners of the window to the mouse position.
  you should be able to move mouse and have the lines follow.
*/


void setup(){
  size(500, 500);
}

void draw (){
    background(155);
    line(0, 0, mouseX, mouseY);
    line(0, height, mouseX, mouseY);
    line(width, 0, mouseX, mouseY);
    line(width, height, mouseX, mouseY);
    
}