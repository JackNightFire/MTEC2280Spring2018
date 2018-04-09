/*
  Create a sketch with an LED. The LED should blink every half second. 
  Create a variable that keeps track of how many times 
  LED has blinked and print it out of the SErial MOnitor. 
  It should be lkie:"The Led blinked 5 times."
*/

int count = 0;//<-keeps count of amount blinks per second.
int delHigh = 500; //<- delay HIGH per second;
int delLow = 500; //delay LOW per second;
void setup() {
  pinMode(5, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  /*===Make LEd blink every half a second======*/
  digitalWrite(5, HIGH);
  delay(delHigh);
  digitalWrite(5, LOW);
  delay(delLow);
  /*===== Record and Print Count of LED blinks=========*/
  if(delHigh){
    count++; 
   }
  Serial.print("The LED blinked ") ;
  Serial.print(count);
  Serial.println(" times.");

}
