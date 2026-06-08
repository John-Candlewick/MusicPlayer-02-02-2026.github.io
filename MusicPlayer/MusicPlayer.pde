/* Music App, Final Project
 */
//
//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
/*Global Variables
 -Possible DIV-Vars needed in draw(), etc.
 - MUST: Music Button-vars, possibly assoctaed DIV-vars
 */
//
void setup() {
  //Display
  fullScreen();
  size(1920, 1080);
  int appWidth = width; //displayWdith
  int appHeight = height; //displayHeight
  //
  //DIVs Population using unitless ratios (i.e. millimeters to pixels)
  //See Case Study
  int paperWidth = 1920; //Best Practice: loacal variables use to make DIV Variables
  int paperHeight = 1080; //Make sure to not copy the teahcers numbers
  float NoBH = 13; //Abreviation = Number Of Buttons Horizontally
  float NoBV = 7.3125; //Abreviation = Number Of Buttons Vertically
  float DivX = appWidth * 1920 / paperWidth;
  float DivY = appHeight * 1080 / paperHeight;
  float DivWidth = appWidth * 1920 / paperWidth;
  float DivHeight = appHeight * 1080 / paperHeight;
  //
  //Move programs around for neatness and to fit the given layout??
  //
  //Text Setup, includes text & font variables
  //
  //Literal Text ... String Variables
  //
  //Font Size Variables, correlated with DIV-Height Variables
  //
  //2D Music Symbal Variables
  //
  //Directiry or Pathway to Images
  //String-Vars of Folders and File Names
  //Concatenation of Pathways
  //PImage Vars + Dimensions (width & height) - loading pathways
  //
  //DIVs
  //rect( DivX, DivY, DivWidth, DivHeight ); //See Case Study
  //rect( songTtitleDivX, songTitleDivY, songtitleDivWidth, songTitleDivHeight );
  //
  //2D music Symbol Shapes, 2D shapes needed to draw
  //
  //Drawing Text - Formatting Text Functions
  //
  //Drawing Text - Font Size Adjustment (WHILE Loop)
  //
  //Draw Text with adjusted DIV Variables
  //
  //Images and Aspect Ratio Algorithm, including WHILE Loop
  //image();
  //
  //Find and clean up unneeded DIVs
  //
  rect( DivX, DivY, DivWidth, DivHeight );
  //rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV*0+90, DivWidth = paperWidth/NoBH*6, DivHeight = paperHeight/NoBV ); //song title //Copy and Paste, rename variables
  //rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV+90, DivWidth = paperWidth/NoBH*6, DivHeight = paperHeight/NoBV ); // song details (release date?)
  rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV*2+90, DivWidth = paperWidth/NoBH*2, DivHeight = paperHeight/NoBV*2 ); // artist pfp
  //rect( DivX = paperWidth/NoBH*3, DivY = paperHeight/NoBV*2+90, DivWidth = paperWidth/NoBH*4, DivHeight = paperHeight/NoBV ); // artist desc
  //rect( DivX = paperWidth/NoBH*3, DivY = paperHeight/NoBV*3+90, DivWidth = paperWidth/NoBH*4, DivHeight = paperHeight/NoBV ); // more artist desc?
  rect( DivX = paperWidth/NoBH*8, DivY = paperHeight/NoBV*0+90, DivWidth = paperWidth/NoBH*4, DivHeight = paperHeight/NoBV*4 ); // song image
  // the buttons (figure out which are which)
  rect( DivX = paperWidth/NoBH, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #1
  square(172.5, 798, 100);//Add shapes here, under each button
  rect( DivX = paperWidth/NoBH*2, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #2
  rect( DivX = paperWidth/NoBH*3, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #3
  rect( DivX = paperWidth/NoBH*4, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #4
  rect( DivX = paperWidth/NoBH*5, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #5
  rect(825, 810, 20, 80);
  rect(780, 810, 20, 80);
  rect( DivX = paperWidth/NoBH*6, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #6
  triangle(925, 810, 925, 890, 1000, 850);
  rect( DivX = paperWidth/NoBH*7, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #7
  square(1085, 825, 50);
  rect( DivX = paperWidth/NoBH*8, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #8
  rect( DivX = paperWidth/NoBH*9, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #9
  rect( DivX = paperWidth/NoBH*10, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #10
  rect( DivX = paperWidth/NoBH*11, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #11
  // the small buttons at the top corners?
  //rect ( DivX = 1870, DivY = 0, DivWidth = 50, DivHeight = 50);//X button/exit button
  // progress bar
  rect ( DivX = paperWidth/NoBH, DivY = 980, DivWidth = paperWidth/NoBH*11, DivHeight = 15);//progress bar?
  // times at ends of progress bar
  rect ( DivX = 27.69, DivY = 952, DivWidth = 110, DivHeight = 70); //left box
  rect ( DivX = 1782.28, DivY = 952, DivWidth = 110, DivHeight = 70); //right box
  println(paperWidth/NoBH); //ImageSimple program doesn't include decimals becuase int is used
  //
  //Inserting text program here seemed to work with some adjustments
  //
  //IMPORTANT: DIVs may not be needed in here since they are already in the MusicPlayer program OR vice versa
  //Clean up "While" areas
  /* Text Simple | Hardcoded
   */
  //
  //Display
  //
  //Population: DIVs
  float widthOfButton = appWidth/NoBH;
  float beginningButtonSpace = widthOfButton;
  float extraHeight = 90; //Adjust this to make it more understandable?
  //
  float closeX = appWidth - 50;
  float closeY = 0;
  float closeWidth = 50;
  float closeHeight = 50;
  //^close button
  float songTitleDivX = beginningButtonSpace;
  float songTitleDivY = extraHeight;
  float songTitleDivWidth = appWidth/NoBH*6;
  float songTitleDivHeight = appHeight/7.3125;
  //^Long bar for song title
  float songDetailsDivX = beginningButtonSpace;
  float songDetailsDivY = appWidth/NoBH+extraHeight;
  float songDetailsDivWidth = appWidth/NoBH*6;
  float songDetailsDivHeight = appHeight/7.3125;
  //^Text bar bellow song title for song details
  float artistNameDivX = beginningButtonSpace*3;
  float artistNameDivY = appWidth/NoBH*2+extraHeight;
  float artistNameDivWidth = appWidth/NoBH*4;
  float artistNameDivHeight = appHeight/7.3125;
  //^Artist name
  float artistDetailsDivX = beginningButtonSpace*3;
  float artistDetailsDivY = appWidth/NoBH*3+extraHeight;
  float artistDetailsDivWidth = appWidth/NoBH*4;
  float artistDetailsDivHeight = appHeight/7.3125;
  //^Artist details
  //
  //DIV: Image
  rect(closeX, closeY, closeWidth, closeHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(songDetailsDivX, songDetailsDivY, songDetailsDivWidth, songDetailsDivHeight);
  rect(artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight);
  rect(artistDetailsDivX, artistDetailsDivY, artistDetailsDivWidth, artistDetailsDivHeight);
  //
  //Strings, Text, Literal
  String title = "Song Title";//Song title? Find a song people won't judge you for listening to
  String songDetails = "Song Details";
  String exit = "X";
  String artistName = "Artist Name";
  String artistDetails = "Artist Details";
  /* Full String longer than Rectangle, "Wahoo! I changed 2D Size."
   - divHeight must fit the font size or text is not shown (Advanced, error check includes %-decrease)
   - Fonts includes the in WHITE SPACE around the foreground "coloured ink"
   - divWidth must include the font size
   - if font is too big, wrap around happens
   - OR full string is not drawn
   */
  /*Fonts from OS
   println("Start of Console"); //ERROR in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all available fonts on system
   printArray(fontList); //For listing all possible fonts to choose, the createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Crate Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK". known conflict between loadFont() and createFont()
   */
  //
  // Fonts from OS
  float fontSize1 = songTitleDivHeight-songTitleDivHeight/2;//Divide by 2 or 3 depending on amount of text, maybe make versions of 2 and 3 for different texts?
  float fontSize2 = closeHeight;
  //add more if needed?
  PFont font; //Font Variable Name, able to have more than one Font
  String Tahoma = "Tahoma"; //Spellling of the Font Matters, see PFont.list() v Create Font above
  font = createFont(Tahoma, fontSize1); //Changed from "fontSize" to "fontSize1"
  //
  //Drawing Text
  color blackInk = #000000; //AP MiniLesson on bit, 8-bit or byte (grey scale, 250), colour
  color whiteInk = #FFFFFF; //Grey Scale is 255
  color resetInk = whiteInk;
  fill(blackInk); //Ink, hexidecimal copied from Color Selector
  //Grey Scale 0-255
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.Org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  //
  //Procedure Passing RECT(#2) && fontSize(RECT#)
  float constantDecrease = 0.99;
  int iWhile=0;
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  while ( textWidth(title) > songTitleDivWidth ) {
    //println("While #1"); //INFINITE Loop Of Doom And Despair
    iWhile++;
    if ( iWhile>10000 ) {
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  //
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  iWhile=0;
  while ( textWidth(title) > songTitleDivWidth ) {
    //println("While #2"); //INFINITE Loop Of Doom And Despair
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize2 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text(songDetails, songDetailsDivX, songDetailsDivY, songDetailsDivWidth, songDetailsDivHeight );
  //
  textFont(font, fontSize2); //must include textSize() before text() & textWidth()
  iWhile=0;
  while ( textWidth(title) > songTitleDivWidth ) {
    //println("While #3"); //INFINITE Loop Of Doom And Despair
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize2 *= constantDecrease;
    textFont(font, fontSize2);
  }
  text(exit, closeX, closeY, closeWidth, closeHeight );
  //
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  iWhile=0;
  while ( textWidth(title) > artistNameDivWidth ) {
    //println("While #2"); //INFINITE Loop Of Doom And Despair
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize2 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( artistName, artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight );
  //
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  iWhile=0;
  while ( textWidth(title) > artistDetailsDivWidth ) {
    //println("While #2"); //INFINITE Loop Of Doom And Despair
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize2 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( artistDetails, artistDetailsDivX, artistDetailsDivY, artistDetailsDivWidth, artistNameDivHeight );
  //
  fill(resetInk);//Keep this at the very bottom of all of the whiles
  //
  //
  String upArrow = "..";
  String dependanciesFolder = "Dependencies";
  String imagesFolder = "Images";
  String imageName1 = "250px-CD_autolev_crop_new";
  String imageName2 = "CDP101a";
  //String imageName3 = "Funky_Stuff_mixtape"; unused
  String fileExtension = ".jpg";
  String open = "/";
  //
  //Concatenation
  //Note, Cut Out, See Absolute Pathway:
  //See Relative Pathway: Dependencies\Images, pathways wont be similiar
  String imageDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + imagesFolder + open; //subject to change? change according to needs.
  String pathway1 = imageDirectory + imageName1 + fileExtension;
  String pathway2 = imageDirectory + imageName2 + fileExtension;
  //String pathway3 = imageDirectory + imageName3 + fileExtension; completely unused
  //println(pathway1);
  //
  PImage image1 = loadImage( pathway1 );
  //int imageWidth1 = 250; unused
  //int imageHeight1 = 250; unused
  PImage image2 = loadImage( pathway2 );
  int imageWidth2 = 250;//Subject to change when actual song image is chosen, preferably find a 1:1 image
  int imageHeight2 = 124;//^^^
  //PImage image3 = loadImage( pathway3 ); completely unused
  //int imageWidth3 = 250; completely unused
  //int imageHeight3 = 166; completely unused
  //
  //Population: DIVs
  //int widthOfButton = appWidth/numberOfButton;
  float image2DivX = beginningButtonSpace*8+1; //IMPORTANT: when copied and pasted into MusicPlayer IMAGES BOX DOES NOT FIT INTO DIV, this processing file DivX is likely off. NEEDS +8 TO ALIGN, figure out why
  float image2DivY = appHeight/7.3125*0+90+1;
  float image2DivWidth = appWidth/13*4;//Figure out why it doesn't align with the DIV, most likely has something to do with the width
  float image2DivHeight = appHeight/7.3125*4-1.7; //1+1.5=2.5, half of the total height //SUBTRACTION to make it fit within DIV
  //Confirm the image fits perfectly within the confines of the DIV
  float imageDivX = beginningButtonSpace*1+1; //IMPORTANT: when copied and pasted into MusicPlayer IMAGES BOX DOES NOT FIT INTO DIV, this processing file DivX is likely off. NEEDS +8 TO ALIGN, figure out why
  float imageDivY = appHeight/7.3125*2+90+1;
  float imageDivWidth = appWidth/13*2+1.5;//Figure out why it doesn't align with the DIV, most likely has something to do with the width
  float imageDivHeight = appHeight/7.3125*2-1.7; //1+1.5=2.5, half of the total height //SUBTRACTION to make it fit within DIV

  //Image: Aspect Ratio Aglorithm
  //println( float(imageWidth2)/ float(imageHeight2) );
  //Ternary operator for aspect ratio: Q: greatone v lessone
  float image2AspectRatio_GreatOne = ( imageWidth2 > imageHeight2 ) ? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float(imageWidth2) ;
  println("Verify image aspect ratio greater than one.", image2AspectRatio_GreatOne>=1, "\tActual Number:", image2AspectRatio_GreatOne);
  float imageWidthAdjusted1 = imageDivWidth;
  println("Comparison pf imageHeight2 and divHeight.", imageHeight2, imageDivHeight);
  float imageHeightAdjusted1 = ( imageWidth2 >= imageDivWidth ) ? imageWidthAdjusted1 * image2AspectRatio_GreatOne : imageWidthAdjusted1 * image2AspectRatio_GreatOne ;
  println("imageHeightAdjusted1", imageHeightAdjusted1);
  println("Question: is this too big?", "\t\thint ... reposition image() above rect(div)");
  // While Looping: decrease imageWidth to decrease the calculated imageHeight (% decrease within multiplication asignment operator)
  while ( imageHeightAdjusted1 > imageDivHeight ) {
    imageWidthAdjusted1 *= 1;//WAS 0.99, but setting it to 1 makes it fit?
    imageHeightAdjusted1 = imageWidthAdjusted1 / image2AspectRatio_GreatOne ; //CHANGE THIS?
  }//END WHILE
  //
  //DIV: Image
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  //
  image(image1, imageDivX, imageDivY, imageWidthAdjusted1, imageDivHeight);
  image(image2, image2DivX, image2DivY, image2DivWidth, image2DivHeight);
  //image(image3, 0, 0);
  //
  //Global Variables
  //IMPORTANT NOTE: Music is yet to be chosen and added?
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
  Minim minim;  //initates entire class
  int numberOfSongs = 1; //Best Practcie
  int numberOfSoundEffect = 1;
  AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
  AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
  int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
  //
  //Display
  /*size( 700, 500 ); //width //height
   //fullScreen();  //displayWidth //displayHeight
   int appWidth = width; //Best Practice
   int appHeight = height;
   */
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this); //Manditory
  /*String upArrow = "..";
   String open = "/"; */
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependenciesFolder = "Dependencies";
  String songName1 = "duran-duran-invisible"; //Have yet to decide
  String soundEffect1 = "computer-mouse-click.mp3";
  String fileExtension_mp3 = ".mp3";
  //
  //
  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ;
  String soundEffectsDirectory = upArrow = open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ;
  String file = musicDirectory + soundEffect1 + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( file );
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
    playList[currentSong].play();
    printArray(playList);
    playList[currentSong].play();
  }
  size(1920, 1080); // Set the canvas size
  minim = new Minim(this);
  player = minim.loadFile("duran-duran-invisible.mp3"); // Replace with your audio file
  player.play();
  //
}//End Setup
//
//void draw() {
//}//End Draw
//
void mousePressed() {
}//End Mouse Presssed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
//
//AI implemented code bellow
//
import ddf.minim.*; // Import the Minim library

Minim minim;
AudioPlayer player;

/*void setup() {
  size(1920, 1080); // Set the canvas size
  minim = new Minim(this);
  player = minim.loadFile("your-audio-file.mp3"); // Replace with your audio file
  player.play();
}
*/
void draw() {
  background(255); // Clear the background

  // Progress bar
  float DivX = width / 10.0;
  float DivY = 980;
  float DivWidth = width / 10.0 * 11;
  float DivHeight = 15;
  rect(DivX, DivY, DivWidth, DivHeight);

  // Left box for current time
  rect(27.69, 952, 110, 70);
  fill(0);
  textSize(20);
  text(formatTime(player.position()), 40, 990); // Display current time

  // Right box for total duration
  rect(1782.28, 952, 110, 70);
  text(formatTime(player.length()), 1795, 990); // Display total duration
}

// Helper function to format time in mm:ss
String formatTime(int millis) {
  int seconds = millis / 1000;
  int minutes = seconds / 60;
  seconds %= 60;
  return nf(minutes, 2) + ":" + nf(seconds, 2);
}

void stop() {
  player.close();
  minim.stop();
  super.stop();
 }
