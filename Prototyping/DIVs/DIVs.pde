/* DIVs 2D Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 192;
int paperHeight = 108;
float DivX = appWidth * 192 / paperWidth;
float DivY = appHeight * 108 / paperHeight;
float DivWidth = appWidth * 192 / paperWidth;
float DivHeight = appHeight * 108 / paperHeight;

//rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX = 147.69, DivY = 90, DivWidth = 886.15, DivHeight = 147.69 ); //song title //Copy and Paste, rename variables
rect( DivX = 147.69, DivY = 237.69, DivWidth = 886.15, DivHeight = 147.69 ); // bar below song title
rect( DivX = 147.69, DivY = 385.38, DivWidth = 295.38, DivHeight = 295.38 ); // artist pfp
rect( DivX = 443.07, DivY = 385.38, DivWidth = 590.76, DivHeight = 147.69 ); // artist desc
rect( DivX = 443.07, DivY = 533.07, DivWidth = 590.76, DivHeight = 147.69 ); // more artist desc?
rect( DivX = 1181.53, DivY = 90, DivWidth = 590.76, DivHeight = 590.76 ); // song image
// the buttons (figure out which are which)
rect( DivX = 147.69, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #1
rect( DivX = 295.38, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #2
rect( DivX = 443.07, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #3
rect( DivX = 590.76, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #4
rect( DivX = 738.45, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #5
rect( DivX = 886.14, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #6
rect( DivX = 1033.83, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #7
rect( DivX = 1181.52, DivY = 773.45, DivWidth = 147.69, DivHeight = 1920/13 ); // button #8
rect( DivX = 1329.21, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #9
rect( DivX = 1476.9, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #10
rect( DivX = 1624.59, DivY = 773.45, DivWidth = 147.69, DivHeight = 147.69 ); // button #11
// the small buttons at the top corners?
rect ( DivX = 1870, DivY = 0, DivWidth = 50, DivHeight = 50);
// progress bar
rect ( DivX = 147.69, DivY = 980, DivWidth = 1624.59, DivHeight = 15);
// times at ends of progress bar
rect ( DivX = 27.69, DivY = 952, DivWidth = 110, DivHeight = 70);
rect ( DivX = 1782.28, DivY = 952, DivWidth = 110, DivHeight = 70);

//button symbols
