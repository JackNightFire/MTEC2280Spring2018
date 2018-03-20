int pinLed[] = {5, 6, 7, 8, 9, 10};
/*
  pinLed[0] = 1
  pinLed[1] = 2
  ...etc...
*/
void setup() {

  //sets all LEDs to output using an array and for loop
  for (int i = 0; i < 6; i++) {
    pinMode(pinLed[i], OUTPUT);
  }

}

void loop() {
  //all LEDs off
  for (int i = 0; i < 6; i++) {

    for (int i = 0; i < 6; i++) {
      digitalWrite(pinLed[i], LOW);
    }
    
    digitalWrite(pinLed[i], HIGH);
    delay(100);
    
  }

  


}
