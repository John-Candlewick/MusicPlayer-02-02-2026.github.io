/* Library Notes
 - File / Sketch / Import Library / Manage Libraries
 - We use Minim for Sound and Sound Effects
 - Able to Google-search libraries to make your project easier
 - Documentation: https://code.compartmental.net/minim/
 - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 
 ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
 - Processing-Java Libraries must be installed into the IDE
 - Java Libraries simply require the 'import' declaration
 
 - Note: Hard Drive Registery or address
 
 - Library will not execute since not using full compiler
 
 */
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;  //initates entire class
int numberOfSongs = 1; //Best Practcie
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void setup() {
  //Display
  size( 700, 500 ); //width //height
  //fullScreen();  //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this); //Manditory
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music"; //Dev Specific
  String soundEffectsFolder = "Sound Effects"; //Dev Specific
  String dependenciesFolder = "Dependencies"; //Dev Specific
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "";
  
  //continue here

  String songName1 = "";
  String soundEffect1 = "computer-mouse-click";
  String fileExtension_mp3 = ".mp3";
  //
  //
  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ; //Concatenation
  String soundEffectsDirectory = upArrow = open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; //Concatenation
  String pathway = musicDirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and dleted once file is LOADED
  println(pathway);
  playList[ currentSong ] = minim.loadFile( pathway );//ERROR: Veryify Spelling & Library insstalled, Sketch / Import Library
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewriting  FILE
  println(pathway);
  soundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Veryify Spelling & Library insstalled, Sketch / Import Library
  //
  if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, playlist is NULL
    //see file or minim.loadFile
    println("The playlist or sound effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     printlna("Full Music File Pathway", file);
     */
  } else {
    playList[currentSong].loop();
    printArray(playList);
  }
}//End Setup
//
void draw() {}//End Draw
//
void mousePressed() {}//End Mouse Pressed
//
void keyPressed() {}//End Key Pressed
//
//End MAIN Program
