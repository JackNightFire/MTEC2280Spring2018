#include <Servo.h>
 
Servo servoX;  // create servo object to control an X axis servo
Servo servoY;  // and for Y
 
// (a maximum of eight servo objects can be created!)
 
int servoXPin = 10;  // what pins are our servos connected to?
int servoYPin = 11;
int poten1 = A0; // <-- potentiometer#1 x-axis
int poten2 = A1; //<-- potentiometer#2 y-axis
int poten1Val = 0; // <-- value from potentiometer #1
int poten2Val = 0; // <-- value from potentiometer #2
int posX = 0;    // variable to store the servo position
int posY = 0;    // variable to store the other servo position
 
void setup() {
  Serial.begin(9600);  // we're gonna use serial comm.
 
  // "attach" servos
  servoY.attach(servoXPin);  // attaches the servo on pin 10 to the servo object
  servoX.attach(servoYPin);  // attaches the servo on pin 11 to the servo object
}
 
void loop() {
  //Read values from potentiometers
  poten1Val = analogRead(poten1);
  poten2Val = analogRead(poten2);

  //smooth out the values
  int previous1 = 0;
  int previous2 = 0;
  int smooth1 = (poten1Val * .1) + (previous1 *.9);
  int smooth2 = (poten2Val * .1) + (previous2 *.9);
  
  //map from potentiometer to degrees of servo
  int mapPoten1Val = map(smooth1, 0, 1000, 80, 170);
  int mapPoten2Val = map(smooth2, 0, 1000, 1, 170);


  
  
  //print values of potentiometers
  Serial.print(poten1Val );
  Serial.print(" , ");
  Serial.println(poten2Val);
  
  // "write" for a servo motor just tells it what angle to go to
  servoX.write(mapPoten1Val);
  servoY.write(mapPoten2Val);
}
