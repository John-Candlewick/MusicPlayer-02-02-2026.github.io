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
//
float quitX = appWidth - appHeight*1/20;//change to 1870??
float quitY = 0;
float quitWidth = appHeight*1/20;//change to 50?
float quitHeight = appHeight*1/20;//change to 50?
//^Oddball square in the corner
float songTitleDivX = beginningButtonSpace;
float songTitleDivY = appHeight*1.5/20;
float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float songTitleDivHeight = appHeight*1/10;
//^Long bar for title
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;
//^Oddball large square
//
//DIV: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
//
//Strings, Text, Literal
String title = "Wahoo!";//Song title?
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
float fontSize1 = songTitleDivHeight; //1:1 Font Height to rectHeight
float fontSize2 = messageDIV_Height;
float fontSize3 = quitHeight; //Change these to match your own prefered DIV names
PFont font; //Font Variable Name, able to have more than one Font
String SegoeUIItalic = "Segoe UI Italic"; //Spellling of the Font Matters, see PFont.list() v Create Font above
font = createFont(SegoeUIItalic, fontSize1); //Changed from "fontSize" to "fontSize1"
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
textFont(font, fontSize2); //must include textSize() before text() & textWidth()
iWhile=0;
while ( textWidth(title) > songTitleDivWidth ) {
  //println("While #2"); //INFINITE Loop Of Doom And Despair
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text(title, quitX, quitY, quitWidth, quitHeight );
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
text(title, quitX, quitY, quitWidth, quitHeight );
fill(resetInk);
//
//IMPORTANT: something went wrong and the text from the large box has disapeared and the text for the quit box seems extremely large and doesn't fit
