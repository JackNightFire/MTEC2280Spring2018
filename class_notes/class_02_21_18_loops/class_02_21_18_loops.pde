// for this sketch to work, you'll need to install the "Sound" library
// Sketch -> Import Library -> Search for "Sound"
// for more about the sound library, see https://processing.org/tutorials/sound/
// and Help -> Libraries Reference -> Sound
import processing.sound.*;

// this variable will be an instance of the SoundFile class from the sound library
// the SoundFile will hold a reference to a sound file and provide methods (functions)
// to play back the sound in different ways
SoundFile kick;

void setup() {
  
  // follow this pattern to load a new sound file
  // files are in aif format and located in the sketch's "data" folder
  kick = new SoundFile(this, "kick.aif");
}

void draw() {
}

void keyPressed() {
  if (key == 32) { // the code in this block will execute whenever we hit the space bar
  
    // since kick is an instance of SoundFile, it has a "play" method
    // call the play method to hear the kick drum
    kick.play();  
  }
}

// EXERCISE: How would you load another sound file called "snare" from the data folder?