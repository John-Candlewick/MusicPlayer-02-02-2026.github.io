//IMPORTANT: DIVs may not be needed in here since they are already in the MusicPlayer program
/* Text Simple | Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population: DIVs
int numberOfButton = 13; //Imaginary buttons on each side
int widthOfButton = appWidth/numberOfButton;
int beginningButtonSpace = widthOfButton;
int extraHeight = 90; //Adjust this to make it more understandable?
//
float quitX = appWidth - appHeight/20;
float quitY = 0;
float quitWidth = appHeight/20;
float quitHeight = appHeight/20;
//^Quit button
float songTitleDivX = beginningButtonSpace;
float songTitleDivY = extraHeight;
float songTitleDivWidth = appWidth/numberOfButton*6;
float songTitleDivHeight = appHeight/7.3125;
//^Long bar for song title
float songDetailsDivX = beginningButtonSpace;
float songDetailsDivY = appWidth/numberOfButton+extraHeight;
float songDetailsDivWidth = appWidth/numberOfButton*6;
float songDetailsDivHeight = appHeight/7.3125;
//^Text bar bellow song title for song details
float artistNameDivX = beginningButtonSpace*3;
float artistNameDivY = appWidth/numberOfButton*2+extraHeight;
float artistNameDivWidth = appWidth/numberOfButton*4;
float artistNameDivHeight = appHeight/7.3125;
//^Artist name
float artistDetailsDivX = beginningButtonSpace*3;
float artistDetailsDivY = appWidth/numberOfButton*3+extraHeight;
float artistDetailsWidth = appWidth/numberOfButton*4;
float artistDetailsHeight = appHeight/7.3125;
//^Artist details
//
//DIV: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(songDetailsDivX, songDetailsDivY, songDetailsDivWidth, songDetailsDivHeight);
rect(artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight);
rect(artistDetailsDivX, artistDetailsDivY, artistDetailsWidth, artistDetailsHeight);
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
float fontSize1 = songTitleDivHeight-songTitleDivHeight/2;//Divide by 2 or 3 depending on amount of text
float fontSize2 = songDetailsDivHeight;//get rid of?
float fontSize3 = quitHeight; //Change these to match your own prefered DIV names
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
textFont(font, fontSize3); //must include textSize() before text() & textWidth()
iWhile=0;
while ( textWidth(title) > songTitleDivWidth ) {
  //println("While #3"); //INFINITE Loop Of Doom And Despair
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
text(exit, quitX, quitY, quitWidth, quitHeight );
fill(resetInk);
//
//IMPORTANT: something went wrong and the text from the large box has disapeared and the text for the quit box seems extremely large and doesn't fit
