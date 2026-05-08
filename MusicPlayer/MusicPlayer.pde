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
//Global Variables
//
void setup() {
  //Display
  //fullscreen();
  size(1920, 1080);
  int appWidth = width; //displayWdith
  int appHeight = height; //displayHeight
  //
  //DIVs Population using unitless ratios (i.e. millimeters to pixels)
  //See Case Study
  int paperWidth = 1920; //Best Practice: loacal variables use to make DIV Variables
  int paperWidth = 1080; //Make sure to not copy the teahcers numbers
  float DivX = appWidth * 1920 / paperWidth;
  float DivY = appHeight * 1080 / paperHeight;
  float DivWidth = appWidth * 1920 / paperWidth;
  float DivHeight = appHeight * 1080 / paperHeight;
  //
  //DIVs
  //rect( DivX, DivY, DivWidth, DivHeight ); //See Case Study
  rect( songTtitleDivX, songTitleDivY, DivWidth, DivHeight );
  //
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
