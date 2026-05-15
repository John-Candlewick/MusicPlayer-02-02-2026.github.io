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
 -
 -
 */
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
  //Images and Aspect Ratio Algorithm, including WHILE Loop
  //image();
  //
  rect( DivX, DivY, DivWidth, DivHeight );
  rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV*0+90, DivWidth = paperWidth/NoBH*6, DivHeight = paperHeight/NoBV ); //song title //Copy and Paste, rename variables
  rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV+90, DivWidth = paperWidth/NoBH*6, DivHeight = paperHeight/NoBV ); // bar below song title, find a proper label
  rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV*2+90, DivWidth = paperWidth/NoBH*2, DivHeight = paperHeight/NoBV*2 ); // artist pfp
  rect( DivX = paperWidth/NoBH*3, DivY = paperHeight/NoBV*2+90, DivWidth = paperWidth/NoBH*4, DivHeight = paperHeight/NoBV ); // artist desc
  rect( DivX = paperWidth/NoBH*3, DivY = paperHeight/NoBV*3+90, DivWidth = paperWidth/NoBH*4, DivHeight = paperHeight/NoBV ); // more artist desc?
  rect( DivX = paperWidth/NoBH*8, DivY = paperHeight/NoBV*0+90, DivWidth = paperWidth/NoBH*4, DivHeight = paperHeight/NoBV*4 ); // song image
  // the buttons (figure out which are which)
  rect( DivX = paperWidth/NoBH, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #1
  rect( DivX = paperWidth/NoBH*2, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #2
  rect( DivX = paperWidth/NoBH*3, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #3
  rect( DivX = paperWidth/NoBH*4, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #4
  rect( DivX = paperWidth/NoBH*5, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #5
  rect( DivX = paperWidth/NoBH*6, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #6
  rect( DivX = paperWidth/NoBH*7, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #7
  rect( DivX = paperWidth/NoBH*8, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #8
  rect( DivX = paperWidth/NoBH*9, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #9
  rect( DivX = paperWidth/NoBH*10, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #10
  rect( DivX = paperWidth/NoBH*11, DivY = 773.45, DivWidth = paperWidth/NoBH, DivHeight = paperHeight/NoBV ); // button #11
  // the small buttons at the top corners?
  rect ( DivX = 1870, DivY = 0, DivWidth = 50, DivHeight = 50);//X button/exit button
  // progress bar
  rect ( DivX = paperWidth/NoBH, DivY = 980, DivWidth = paperWidth/NoBH*11, DivHeight = 15);
  // times at ends of progress bar
  rect ( DivX = 27.69, DivY = 952, DivWidth = 110, DivHeight = 70); //left box
  rect ( DivX = 1782.28, DivY = 952, DivWidth = 110, DivHeight = 70); //right box
  println(paperWidth/NoBH); //ImageSimple program doesn't include decimals, may be because it uses appWidth as the divided variable, try adjusting it to be like paperWidth
  //
  String upArrow = "..";
  String dependanciesFolder = "Dependencies";
  String imagesFolder = "Images";
  String imageName1 = "250px-CD_autolev_crop_new";
  String imageName2 = "CDP101a";
  String imageName3 = "Funky_Stuff_mixtape";
  String fileExtension = ".jpg";
  String open = "/";
  //
  //Concatenation
  //Note, Cut Out, See Absolute Pathway:
  //See Relative Pathway: Dependencies\Images, pathways wont be similiar
  String imageDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + imagesFolder + open; //subject to change? change according to needs.
  String pathway1 = imageDirectory + imageName1 + fileExtension;
  String pathway2 = imageDirectory + imageName2 + fileExtension;
  String pathway3 = imageDirectory + imageName3 + fileExtension;
  //println(pathway1);
  //
  PImage image1 = loadImage( pathway1 );
  int imageWidth1 = 250;
  int imageHeight = 250;
  PImage image2 = loadImage( pathway2 );
  int imageWidth2 = 250;
  int imageHeight2 = 124;
  PImage image3 = loadImage( pathway3 );
  int imageWidth3 = 250;
  int imageHeight3 = 166;
  //
  //Population: DIVs
  float numberOfButton = 13; //Imaginary buttons on each side
  float widthOfButton = displayWidth/numberOfButton;
  //int widthOfButton = appWidth/numberOfButton;
  float beginningButtonSpace = widthOfButton;
  float imageDivX = beginningButtonSpace*8+1; //IMPORTANT: when copied and pasted into MusicPlayer IMAGES BOX DOES NOT FIT INTO DIV, this processing file DivX is likely off. NEEDS +8 TO ALIGN, figure out why
  float imageDivY = appHeight/7.3125*0+90+1;
  float imageDivWidth = appWidth/13*4+1.5;//Figure out why it doesn't align with the DIV, most likely has something to do with the width
  float imageDivHeight = appHeight/7.3125*4; //1+1.5=2.5, half of the total height
  //Confirm the image fits perfectly within the confines of the DIV

  //Image: Aspect Ratio Aglorithm
  //println( float(imageWidth2)/ float(imageHeight2) );
  //Ternary operator for aspect ratio: Q: greatone v lessone
  float image2AspectRatio_GreatOne = ( imageWidth2 > imageHeight2 ) ? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float(imageWidth2) ;
  println("Verify image aspect ratio greater than one.", image2AspectRatio_GreatOne>=1, "\tActual Number:", image2AspectRatio_GreatOne);
  float imageWidthAdjusted2 = imageDivWidth;
  println("Comparison pf imageHeight2 and divHeight.", imageHeight2, imageDivHeight);
  float imageHeightAdjusted1 = ( imageWidth2 >= imageDivWidth ) ? imageWidthAdjusted2 * image2AspectRatio_GreatOne : imageWidthAdjusted2 * image2AspectRatio_GreatOne ;
  println("imageHeightAdjusted1", imageHeightAdjusted1);
  println("Question: is this too big?", "\t\thint ... reposition image() above rect(div)");
  // While Looping: decrease imageWidth to decrease the calculated imageHeight (% decrease within multiplication asignment operator)
  while ( imageHeightAdjusted1 > imageDivHeight ) {
    imageWidthAdjusted2 *= 1;//WAS 0.99, but setting it to 1 makes it fit?
    imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRatio_GreatOne ; //CHANGE THIS?
  }//END WHILE
  //
  //DIV: Image
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  //
  //image(image1, 0, 0);
  image(image2, imageDivX, imageDivY, imageWidthAdjusted2, imageDivHeight);
  //image(image3, 0, 0);
  println(beginningButtonSpace*8);
  println(beginningButtonSpace);
  println(appWidth);
  println(1920./13.);
  println(paperWidth/NoBH*8, paperHeight/NoBV*0+90, paperWidth/NoBH*4, paperHeight/NoBV*4);
}//End Setup
//
void draw() {
}//End Draw
//
void mousePressed() {
}//End Mouse Presssed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
