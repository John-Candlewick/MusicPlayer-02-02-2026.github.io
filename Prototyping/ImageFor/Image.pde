/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String[] imageName = new String[3];
String upArrow = ".."; //may need ../
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
imageName[1] = "250px-CD_autolev_crop_new.jpg";
imageName[2] = "";
imageName[3] = "";
String fileExtension = ".jpg";
String open ="/";

//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies/Images
String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String[] pathway = new String[3];
//
//Image Loading
PImage image1, image2, image3;
for ( int i=1; 1<=pathway.length; i++ ) {
  pathway[i] = imageDirectory + imageName[i] + fileExtension;
  image[i] = loadImage( pathway[i] );
}
//
// Image Drawing
for ( int i = 1; i<=pathway,length; i++ ) {
  image(image[i], 0, 0);
}
String = imageDirectory + imageName2 + fileExtension;
String = imageDirectory + imageName3 + fileExtension;
//println(pathway);
//


image2 + loadImage( pathway2 );
image3 + loadImage( pathway3 );
//
for ( int i=1; i<=3; i++) {
  image(image1, 0, 0);
  image(image2, 0, 0);
  image(image3, 0, 0);
}
