int soundPin = 5;
int sounds[] = {3830,3400, 3038, 2648,2550, 2272, 2028, 1912};
void setup() {
  pinMode(soundPin, OUTPUT);
}

void loop() {
 for(int i = 10000 ; i > 1000; i-=150){
  digitalWrite(soundPin, HIGH);
  delayMicroseconds(i);
  digitalWrite(soundPin, LOW);
  delayMicroseconds(i);
  }

  for(int i = 20000 ; i > 10000; i-=100){
  digitalWrite(soundPin, HIGH);
  delayMicroseconds(i);
  digitalWrite(soundPin, LOW);
  delayMicroseconds(i);
  }

//  digitalWrite(soundPin, HIGH);
//  delayMicroseconds(1);
//  digitalWrite(soundPin, LOW);
//  delayMicroseconds(1);
//
//  digitalWrite(soundPin, HIGH);
//  delayMicroseconds(3038);
//  digitalWrite(soundPin, LOW);
//  delayMicroseconds(3038);


}
