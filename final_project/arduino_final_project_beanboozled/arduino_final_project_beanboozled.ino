#include <Servo.h>
 
Servo servoX;  // create servo object to control an X axis servo
Servo servoY; // create servo object to control an Y axis servo
Servo servo; // create servo object to control a claw servo

int servoXPin = 5;  //Digital pin for ServoX
int servoYPin = 4; //Digital pin for ServoY
int servoClaw = 3; //Digital pin for Servo claw
int analogXPin = A0; //Horizontal Read from joystick
int analogYPin = A1; //Vertical Read from joystick
int anXRead = 0; //value from analog pin A0
int anYRead = 0; //value from analog pin A1

int posX = 0;    // variable to store the servo position
int posY = 0;   //storing postion Y
int posClaw = 0; //storing poistion Claw

//Positions for smooting the values
int previousX = 0; 
int previousY = 0;

//Button
int buttonPin = 8;
int counter = 0;
void setup() {
  Serial.begin(9600);  // we're gonna use serial comm.
 
  // "attach" servos
  servoX.attach(servoXPin);  // attaches the servo on pin 11 to the servo object
  servoY.attach(servoYPin);
  servo.attach(servoClaw);

  pinMode(buttonPin, INPUT);
}
 
void loop() {
  // see if there is available serial data
  anXRead = analogRead(analogXPin);
  anYRead = analogRead(analogYPin);
  int mapAnXRead = map(anXRead, 0, 1023, 140, 40);
  int mapAnYRead = map(anYRead, 0, 1023, 180, 90);

  int smoothX = (mapAnXRead * 0.1) + (previousX * 0.9);
  int smoothY = (mapAnYRead * 0.1) + (previousY * 0.9);
  previousX = smoothX;
  previousY = smoothY;

  //Button
  int buttonState;
  buttonState = digitalRead(buttonPin);
  if(buttonState == LOW){
    counter++;
    delay(150);  
  }
  
  if(counter == 0)
    servo.write (10);  // zero degrees
  if(counter == 1)
    servo.write(180);
  //else reset the counter to 0 which resets thr servo to 0 degrees
  else
   counter = 0;

  
  
  //Serail print
  Serial.print("X: ");
  Serial.println(anXRead);
  Serial.print("Y: ");
  Serial.println(anYRead);
  Serial.print("Counter: ");
  Serial.println(counter);
 
  // "write" for a servo motor just tells it what angle to go to
  servoX.write(smoothX);
  servoY.write(smoothY);
  delay(15);
}
