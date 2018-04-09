/*
  Create a 4 LEDs and potentiometer. the pot controls how many leds are on
  such that when the ot is terned all the way to one side, all of them
  are off, by turnong you would turn them on one by one.
*/
int sensorPin = A0; //<--input pin from potentiometer through analog pin A0
int sensorValue = 0;//<--value of the input of potentiometer
int pinNums [] = {5, 6, 7, 8}; //<--array of pins for LEDs
int pinCount = 4;//<--length of the array of the pins used for LEDs

void setup() {
  Serial.begin(9600);
  //Set up the OUTPUT for LEDs
  for (int i = 0; i < pinCount; i++) {
    pinMode(pinNums[i], OUTPUT);
  }
}

void loop() {
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue);
  //Conditionals for LEDs with value of potentiometer, i.e 0 - 1023.
  if (sensorValue >= 820) {
    /*======All LEDs Turned On==========*/
    for (int i = 0; i < pinCount; i++) {
      digitalWrite(pinNums[i], HIGH);
    }
    tone(10, sensorValue);
  } else if (sensorValue >= 615 && sensorValue < 820) {
    /*======= 3 LEDs Turned ON==========*/
    for (int i = 0; i < pinCount - 1; i++) {
      digitalWrite(pinNums[i], HIGH);
    }
    digitalWrite(pinNums[pinCount - 1], LOW);
    tone(10, sensorValue);
  } else if (sensorValue >= 360 && sensorValue < 615) {
    /*======= 2 LEDs Turned ON==========*/
    for (int i = 0; i < pinCount - 2; i++) {
      digitalWrite(pinNums[i], HIGH);
    }
    digitalWrite(pinNums[pinCount - 1], LOW);
    digitalWrite(pinNums[pinCount - 2], LOW);
    tone(10, sensorValue);
  } else if (sensorValue >= 150 && sensorValue < 360) {
    /*======= 1 LEDs Turned ON==========*/
    for (int i = 0; i < pinCount - 3; i++) {
      digitalWrite(pinNums[i], HIGH);
    }
    digitalWrite(pinNums[pinCount - 1], LOW);
    digitalWrite(pinNums[pinCount - 2], LOW);
    digitalWrite(pinNums[pinCount - 3], LOW);
    tone(10, sensorValue);
  }



  else {
    /*===========All LEDs Turned OFF============*/
    for (int i = 0; i < pinCount; i++) {
      digitalWrite(pinNums[i], LOW);
    }
  }

}







