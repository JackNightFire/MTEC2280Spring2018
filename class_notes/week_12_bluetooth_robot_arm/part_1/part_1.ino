#include <SoftwareSerial.h>
#include <Servo.h>

//Servos
Servo servoX;
Servo servoY;
Servo servoZ;

//bluetooth
int rxPin = 3;
int txPin = 2;

SoftwareSerial bluetooth(rxPin, txPin);

int inByte = 0;
int xServo = 6;
int yServo = 5;
int zServo = 7;

int posX = 0;
int posY = 0;
int posZ = 0;
void setup() {
  
  Serial.begin(9600);
  bluetooth.begin(9600);  

  //'attach' servos
  servoX.attach(xServo);
  servoY.attach(yServo);
  servoZ.attach(zServo);
}

void loop() {
 while(bluetooth.available()){
    inByte = Serial.read();
    bluetooth.println(inByte);
  } 

  while(Serial.available() > 2){
    posX = Serial.read();
    posY = Serial.read();
    posZ = Serial.read();  
  }

  servoY.write(posX);
  servoX.write(posY);
  servoZ.write(posZ);
}
