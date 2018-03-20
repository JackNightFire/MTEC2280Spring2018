void setup() {
  //don't need to establish pinMode when using analog pins
  Serial.begin(9600);
  pinMode(8,OUTPUT);

}

void loop() {
//  query the analog pin 0 for values
// that run from 0 to 1023 or 0 to 5V
  int val = analogRead(0);
  int mappedVal = map(val, 0, 1023, 5000, 30000);
  digitalWrite(8, HIGH);
  delayMicroseconds(mappedVal);
  digitalWrite(8,LOW);
  delayMicroseconds(mappedVal);


  
//  Serial.print(mappedVal);
//  Serial.print(", ");
//  Serial.println(val);
// 
//  delay(40);

  
  

  
}
