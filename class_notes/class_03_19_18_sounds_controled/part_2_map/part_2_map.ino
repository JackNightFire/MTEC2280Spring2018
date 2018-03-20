void setup() {
  //don't need to establish pinMode when using analog pins
  Serial.begin(9600);
  pinMode(8,OUTPUT);

}
//In order to create distinctable chunks of dealy you can map
// to 1 - 10, giving you pie-like chunks of range.
void loop() {
//  query the analog pin 0 for values
// that run from 0 to 1023 or 0 to 5V
  int val = analogRead(0);
  int mappedVal = map(val, 0, 1023, 1, 10);
  mappedVal *= 1000;
  digitalWrite(8, HIGH);
  delayMicroseconds(mappedVal);
  digitalWrite(8,LOW);
  delayMicroseconds(mappedVal);


  //print out useful information.
  //remember to comment out when testing on boards
  //because it messes the sound!
//  Serial.print(mappedVal);
//  Serial.print(", ");
//  Serial.println(val);
// 
//  delay(40);

  
  

  
}
