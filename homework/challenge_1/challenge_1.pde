//Challenge#1
/*
  1. Draw an ellipse at the center of the screen USING SIDTH AND HEIGHT SYSTEM.
  2. Draw lines in an X pattern across screen   USING WIDTH AND HEIGHT VARS.
  3. Draw 4 rectangles, one for quadrant, each a different color.
*/

//1. Create a canvas.
size(800, 600);
background(160, 75,85);

//2. Draw an ellipse.
ellipse(width/2, height/2, 150,150);

//3. Draw lines in X pattern.
line(0,0,width,height);
line(0, height, width, 0);

//4. Draw 4 ractangles.
fill(65,240,80);
rect(width/5, height/5, 90, 90);

fill(240,65,80);
rect(width/4 + width/2, height/4 + height/2, 90, 90);

fill(65,80,220);
rect(width/3 -width/4, height/4 + height/2, 90,90);

fill(155,0,130);
rect(width/2 + width/4, height/4, 90,90);