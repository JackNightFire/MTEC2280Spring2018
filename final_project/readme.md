Project Title:
Bean Boozled Assistant.
Get a chance to combine Bean Boozled Jelly Beans & Claw machine. Enjoy the game with a little bit of robotics.


Getting Started:
Hardware:
1 - Arduino Uno Board;
3 - Servo motors;
 1 - Joystick;
 1 - Button;
 1 - Claw;
 Wires;
 Rails for the arm;
 Platform to secure your arm.
 
 Software:
Install Arduino from arduino.cc and include Servo library. The code that was used is attached to the folder.

Installation:
https://www.tinkercad.com/things/ewp5qgSMhq9-fantabulous-esboo/editel
1. Connect servo motors to ground, 5V, and digital pins, i.e. 3, 4, 5.
2. Connect joystick: VCC to 5V, GRND to ground, HORIZ to analog pin A0, VERT to analog pin A1
3. Connect button: connect one lead to ground, another lead to digital pin 8 and 1kΩ resistor. Resistor connects to 3.3V.

Software:
1. Create Servo objects.
2. Read the values from potentiometers and assign them to variables.
3. Map those values from 0 to 1023 to desired degree i.e. from 0 to 180.
4. Write those values to servo for sweep and span motion.
5. Assign an int variable to a button.
6. Read the values from digital input for a button.
7. create a conditional for a state of a button, if button is LOW increment counter.
8. create another variable stating the condition if counter as an argument
9. write servo in that condition, if counter is 0, servo would be 0 degrees, i.e. closed, or counter = 1, servo is 180 degrees i.e. open.
10.** if robot arm is shaky, create a smooth function. create a variables to hold previous reading and smooth reading. Smooth variable     will hold the sum of 10% of mapped value and 90% of previous value. The previous value would be declared after smooth val, and be equal ro it. 
      int smoothVal  = (mappedVal * .1) + (previousVal * .9);
      int previousVal = smoothVal;
      
      
Authors
Catherine Fernandez
Oleg Ligay

Acknowledgments
Hat tip to anyone who used the code.

