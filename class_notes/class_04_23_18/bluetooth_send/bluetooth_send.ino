#include <SoftwareSerial.h>

// which pins for RX and TX on arduino?
int rxPin = 3;
int txPin = 2;

// create a BT object using rx and tx pins
SoftwareSerial bluetooth(rxPin, txPin); // RX, TX

int buttonPin = 5;

void setup() {
  // set up both serials
  Serial.begin(9600);
  bluetooth.begin(9600); 

  // cooler button method
  pinMode(buttonPin, INPUT_PULLUP);
}

void loop() {

  if(digitalRead(buttonPin) == LOW) {
    // button is being pressed
    Serial.println(1);  // send processing a 1
    bluetooth.write(1);
  } else {
    // button is NOT being pressed
    Serial.println('0');  // send processing a 0
    bluetooth.write('0');
  }

  delay(5); // be nice

}
