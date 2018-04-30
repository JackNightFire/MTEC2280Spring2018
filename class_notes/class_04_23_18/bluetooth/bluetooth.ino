//rx - receive data - 0 pin
//tx - transmit data - 1 pin
//there are 6 pins. vcc, gnd, tx, rx. tx goes to rx on arduino, while rx goes to tx. 

#include <SoftwareSerial.h>

// which pins for RX and TX on arduino?
int rxPin = 3;
int txPin = 2;

// create a BT object using rx and tx pins
SoftwareSerial bluetooth(rxPin, txPin); // RX, TX

// store incoming data
int inByte = 0;

void setup() {
  // set up both serials
  Serial.begin(9600);
  bluetooth.begin(9600);
}

void loop() {
  while (bluetooth.available()) {
    inByte = bluetooth.read();
    Serial.println(inByte);
  }

  while (Serial.available()) {
    inByte = Serial.read();
    bluetooth.println(inByte);
  }

  // delay the LED blink by that amount
  digitalWrite(13, HIGH);
  delay(inByte);
  digitalWrite(13, LOW);
  delay(inByte);
}
