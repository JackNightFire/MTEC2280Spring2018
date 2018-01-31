//Width is first, length is second. Size funciton creates a blank canvas window.
size (500, 500);

//changes background color. 
//Should be put on top to set up the stage
background(160,75,85);

//The deault stroke and background is black stroke and white background.

//fill the rectangle with rgb
fill(150,150,150);

/*
fill comes before rectangle in order to fill. 
Think of it like picking a brush first, then drawing a rectangle.
*/

//Rectangle starts at top-left corner with x = 10 & y = 40 with sides of 60*60
rect(10,40,60,60);

//indicates what color is a border/stroke of a figure below, i.e. rectangle.
stroke(255,255,255);
//strokeWeight indicates how many pixels wide the storke should be.
strokeWeight(5);
rect(70,70,60,60);

//indicates that there should be no stroke in a figure drawn below.
// it is gonna be canceled when we issue stroke() command.
noStroke();
fill(255,255,67);
rect(250,250,60,60);

//creates a round object. where x = 200, y = 200, measurement xRadius = 100 & yRadius = 100
ellipse(200,200,100,100);


strokeWeight(2);
stroke(0,0,0);
line(200,200, width, 0);// line(); creates  a line with (x1,y1,x2,y2)
//width detects the width of the canvas and inputs a number into coodinate system for a line.
//height detects the height of the canvas and inputs a number into coordinate system for a line.
stroke(125,125,125);
line(0,height,width, 0);