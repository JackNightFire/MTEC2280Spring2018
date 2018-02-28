int blinkDelay = 0;

void setup() {
  
  pinMode(8, OUTPUT);
  
}

void loop() {

  for(int i = 0; i < 300; i +=10){
    digitalWrite(8, HIGH); //HIGH means apply voltage.
    delay(i);
    digitalWrite(8, LOW); // LOW means cease voltage.
    delay(i);  
  }
  
  
}
