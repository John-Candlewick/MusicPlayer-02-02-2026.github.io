/* Aspect Ratio
 */
//
//Display
fullScreen();
//
String upArow = "..";
String dependanciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 = "250px-CD_autolev_crop_new.jpg";
String imageName2 = "";
String imageName3 = "Funky_Stuff_mixtape.jpg";
String fileExension = ".jpg";
String open = "/";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images
String imageDirectory = upArow + open + upArow + open + dependanciesFolder + open + imagesFolder + open;
String pathway1 = imageDirectory + imageName1 + fileExension;
String pathway2 = imageDirectory + imageName2 + fileExension;
String pathway3 = imageDirectory + imageName3 + fileExension;
//println(pathway);
//
PImage image1 = loadImage( pathway1 );
PImage image2 = loadImage( pathway2 );
int imageWidth2 = ;
int imageHeight2 = ;
PImage image3 = loadImage( pathway3 );
//
//Population: DIVs
int numberOfButton = 13; //Imaginary buttons on each side
int widthOfButton = appWidth/numberOfButtons;
int beginningButttonSpace = WidthOfButton;
float imageDivX = beginningButtonSpace;
float imageDivY = appHeight*4.5/20;
float imageDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height

//Image: Aspect Ratio Aglorithm
//Ternary operator for aspect ratio



//DIV: Image
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image(image1 0, 0);
