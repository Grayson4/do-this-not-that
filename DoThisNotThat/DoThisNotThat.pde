//global Variables
//
void setup() {
  //Display Geometry
  size(600, 400);
  println(width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) {
   appWidth = displayWidth;
   appHeight = displayHeight;
   println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is good to go on your display");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="landscape or Square", p="portrait", DO="Display Orientation", instruct="Please turn your phone :)";
  String orientation = ( appWidth>=appHeight ) ? ls : p;  
  println( DO, orientation );
  if ( orientation==ls ) {//test for chosen display orientation
    println("Good to go");
  } else {
    appWidth *= 0;
    appHeight *= 0;
    println(instruct);
  }
  //
  //population using appWIdth and appHeight
}//End setup
//
void draw() {
  
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End Main Program
