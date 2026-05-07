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
float NOBH = 13; //Abreviation = Number Of Buttons Horizontally
float NOBV = 7.3125; //Abreviation = Number Of Buttons Vertically
float DivX = appWidth * 1920 / paperWidth;
float DivY = appHeight * 1080 / paperHeight;
float DivWidth = appWidth * 1920 / paperWidth;
float DivHeight = appHeight * 1080 / paperHeight;

//Change values from plain numbers to division and values.
//EXAMPLE: 1920/13 = 147.69

//rect( DivX, DivY, DivWidth, DivHeight ); <-rect DIV 'recipe'
rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX = paperWidth/NOBH, DivY = paperHeight/NOBV*0+90, DivWidth = paperWidth/NOBH*6, DivHeight = paperHeight/NOBV ); //song title //Copy and Paste, rename variables
rect( DivX = paperWidth/NOBH, DivY = paperHeight/NOBV+90, DivWidth = paperWidth/NOBH*6, DivHeight = paperHeight/NOBV ); // bar below song title
rect( DivX = paperWidth/NOBH, DivY = paperHeight/NOBV*2+90, DivWidth = paperWidth/NOBH*2, DivHeight = paperHeight/NOBV*2 ); // artist pfp
rect( DivX = paperWidth/NOBH*3, DivY = paperHeight/NOBV*2+90, DivWidth = paperWidth/NOBH*4, DivHeight = paperHeight/NOBV ); // artist desc
rect( DivX = paperWidth/NOBH*3, DivY = paperHeight/NOBV*3+90, DivWidth = paperWidth/NOBH*4, DivHeight = paperHeight/NOBV ); // more artist desc?
rect( DivX = paperWidth/NOBH*8, DivY = paperHeight/NOBV*0+90, DivWidth = paperWidth/NOBH*4, DivHeight = paperHeight/NOBV*4 ); // song image
// the buttons (figure out which are which)
rect( DivX = paperWidth/NOBH, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #1
rect( DivX = paperWidth/NOBH*2, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #2
rect( DivX = paperWidth/NOBH*3, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #3
rect( DivX = paperWidth/NOBH*4, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #4
rect( DivX = paperWidth/NOBH*5, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #5
rect( DivX = paperWidth/NOBH*6, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #6
rect( DivX = paperWidth/NOBH*7, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #7
rect( DivX = paperWidth/NOBH*8, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #8
rect( DivX = paperWidth/NOBH*9, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #9
rect( DivX = paperWidth/NOBH*10, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #10
rect( DivX = paperWidth/NOBH*11, DivY = 773.45, DivWidth = paperWidth/NOBH, DivHeight = paperHeight/NOBV ); // button #11
// the small buttons at the top corners?
rect ( DivX = 1870, DivY = 0, DivWidth = 50, DivHeight = 50);//X button/exit button
// progress bar
rect ( DivX = paperWidth/NOBH, DivY = 980, DivWidth = paperWidth/NOBH*11, DivHeight = 15);
// times at ends of progress bar
rect ( DivX = 27.69, DivY = 952, DivWidth = 110, DivHeight = 70); //left box
rect ( DivX = 1782.28, DivY = 952, DivWidth = 110, DivHeight = 70); //right box

//button symbols
//triangle ();
//for shapes make library?
