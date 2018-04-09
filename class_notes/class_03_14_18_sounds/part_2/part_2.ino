/* Heavily based on http://ardx.org/src/circ/CIRC06-code.txt
 * and also http://ardx.org/src/circ/CIRC07-code.txt
 * Circuit information at http://www.oomlout.com/oom.php/products/ardx/circ-06 
 * and http://www.oomlout.com/oom.php/products/ardx/circ-07
 * may also help
 *
 * The calculation of the tones is made following the mathematical
 * operation:
 *
 *       timeHigh = period / 2 = 1 / (2 * toneFrequency)
 *
 * where the different tones are described as in the table:
 *
 * note   frequency   period  timeHigh
 * c          261 Hz          3830  1915  
 * d          294 Hz          3400  1700  
 * e          329 Hz          3038  1519  
 * f          349 Hz          2864  1432  
 * g          392 Hz          2550  1275  
 * a          440 Hz          2272  1136  
 * b          493 Hz          2028  1014  
 * C          523 Hz          1912  956
 *
 * http://www.arduino.cc/en/Tutorial/Melody
 */
int inputPin1 = 2;
int inputPin2 = 4;
int inputPin3 = 6;
int speakerPin = 7;
int val = 0;

int length = 1; // the number of notes
char notes[] = { 'c', 'd', 'e', 'f', 'g', 'a', 'b', 'C' }; // a space represents a rest
int beats[] = { 1 };
int tempo = 300;

void playTone(int tone, int duration) {
  for (long i = 0; i < duration * 1000L; i += tone * 2) {
    digitalWrite(speakerPin, HIGH);
    delayMicroseconds(tone);
    digitalWrite(speakerPin, LOW);
    delayMicroseconds(tone);
  }
}

void playNote(char note, int duration) {
  char names[] = { 'c', 'd', 'e', 'f', 'g', 'a', 'b', 'C' };
  int tones[] = { 1915, 1700, 1519, 1432, 1275, 1136, 1014, 956 };
  
  // play the tone corresponding to the note name
  for (int i = 0; i < 8; i++) {
    if (names[i] == note) {
      playTone(tones[i], duration);
    }
  }
}

void setup() {
  pinMode(speakerPin, OUTPUT);
  pinMode(inputPin1, INPUT);
  pinMode(inputPin2, INPUT);
  pinMode(inputPin3, INPUT);
}

void loop() {
  if (digitalRead(inputPin1) == LOW) {
    playNote(notes[0], 300);
  } else if (digitalRead(inputPin2) == LOW) {
    playNote(notes[1], 300);
  } else if (digitalRead(inputPin3) == LOW) {
    playNote(notes[2], 300);
  } else {
    digitalWrite(speakerPin, LOW);
  }
}
