/* Aspect Ratio
 */
//
//Display
fullScreen();
size(1920, 1080);
int appWidth = displayWidth;
int appHeight = displayHeight;
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
int numberOfButton = 13; //Imaginary buttons on each side
int widthOfButton = 1920/13;
//int widthOfButton = appWidth/numberOfButton;
int beginningButtonSpace = widthOfButton;
float imageDivX = beginningButtonSpace*8; //IMPORTANT: when copied and pasted into MusicPlayer IMAGES BOX DOES NOT FIT INTO DIV, this processing file DivX is likely off. NEEDS +8 TO ALIGN, figure out why
float imageDivY = appHeight/7.3125*0+90;
float imageDivWidth = appWidth/13*4;
float imageDivHeight = appHeight/7.3125*4; //1+1.5=2.5, half of the total height

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
while( imageHeightAdjusted1 > imageDivHeight ) {
  imageWidthAdjusted2 *= 0.99;
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
