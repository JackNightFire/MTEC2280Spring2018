int ledPin[] = {5, 6, 7, 8, 9, 10};
/*
  pinLed[0] = 1
  pinLed[1] = 2
  ...etc...
*/
void setup() {
  //sets all LEDs to output using an array and for loop
  for (int i = 0; i < 6; i++) {
    pinMode(ledPin[i], OUTPUT);
  }
  Serial.begin(9600);
  randomSeed(analogRead(0));
}

void loop() {
  int rando = random(7);
  Serial.println(rando);

  delay(600);
}

/*
  randomSeed -> gives a random() new starting location.
   - have a button that would catch amount of miliseconds that we could use
      for randomSeed().
   - digital is binary is 0s and 1s/ Low and highs ... etc. 
   - analog is voltage output -> 0 - 5V. 0 - 1023 where 1023 is equal to 5V.
*/
