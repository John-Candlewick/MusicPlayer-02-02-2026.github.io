/* DIVs 2D Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 1920;
int paperHeight = 1080;
float NoBH = 13; //Abreviation = Number Of Buttons Horizontally
float NoBV = 7.3125; //Abreviation = Number Of Buttons Vertically
float DivX = appWidth * 1920 / paperWidth;
float DivY = appHeight * 1080 / paperHeight;
float DivWidth = appWidth * 1920 / paperWidth;
float DivHeight = appHeight * 1080 / paperHeight;

//Change values from plain numbers to division and values.
//EXAMPLE: 1920/13 = 147.69

//rect( DivX, DivY, DivWidth, DivHeight ); <-rect DIV 'recipe'
rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV*0+90, DivWidth = paperWidth/NoBH*6, DivHeight = paperHeight/NoBV ); //song title //Copy and Paste, rename variables
rect( DivX = paperWidth/NoBH, DivY = paperHeight/NoBV+90, DivWidth = paperWidth/NoBH*6, DivHeight = paperHeight/NoBV ); // bar below song title
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

//button symbols
//triangle ();
//for shapes make library?
