#include <Servo.h>

Servo servoX;
Servo servoY;
Servo servoClaw;

int servoXPin = 5;
int servoYPin = 7;
int servoClawPin = 6;

int posX = 0;
int posY = 0;

// Arduino pin numbers
 int SW_pin = 2; // digital pin connected to switch output
 int X_pin = A1; // analog pin connected to X output
 int Y_pin = A0; // analog pin connected to Y output

void setup() {
  pinMode(SW_pin, INPUT);
  digitalWrite(SW_pin, HIGH);
  Serial.begin(9600);
}

void loop() {
  Serial.print("Switch:  ");
  //Serial.print(digitalRead(SW_pin));
  Serial.print("\n");
  Serial.print("X-axis: ");
  Serial.print(analogRead(A1));
  Serial.print("\n");
  Serial.print("Y-axis: ");
  Serial.println(analogRead(A0));
  Serial.print("\n\n");
  delay(500);
}
