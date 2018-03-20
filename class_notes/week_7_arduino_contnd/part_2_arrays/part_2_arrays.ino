int ledPin[]={5,6,7,8,9, 10};

void setup() {
  
  //set all LED pins to output mode
  for(int i = 0; i < 6; i++){
    pinMode(ledPin[i], OUTPUT);
  }
  
}

void loop() {
    //all LEDs off
    for(int i = 0; i < 6; i ++){
      digitalWrite(ledPin[i], LOW);
    }

    //all LEDs on
    for(int i = 0; i < 6; i ++){
      digitalWrite(ledPin[i], HIGH);
      delay(1000);
    }

}
