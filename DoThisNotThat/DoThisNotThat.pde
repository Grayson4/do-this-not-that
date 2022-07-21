//global Variables
float Buttonx1, Buttony1, ButtonWidth1, Buttonheight1;
float Buttonx2, Buttony2, ButtonWidth2, Buttonheight2;
float rectDisplayx2,rectDisplayy2, rectDisplayWidth2, rectDisplayheight2;
float ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiamiter, ellipseDisplayYdiamiter;
color black=#000000;
Boolean rectON=false, ellipseON=false;
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
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  Buttonx1 = centerX - appWidth*1/4;
  Buttony1  = centerY + appHeight*1/4;
  ButtonWidth1 = appWidth*1/4;
  Buttonheight1 = appHeight*1/4;
  Buttonx2 = centerX + appWidth*1/4;
  Buttony2 = Buttony1;
  ButtonWidth2 = ButtonWidth1;
  Buttonheight2 = ButtonWidth1;
  rectDisplayx2 = centerX - appWidth*1/4;
  rectDisplayy2 = centerY - appHeight*1/4;
  rectDisplayWidth2 = ButtonWidth1;
  rectDisplayheight2 = Buttonheight1;
  ellipseDisplayX = Buttonx2;
  ellipseDisplayY = rectDisplayy2;
  ellipseDisplayXdiamiter = appWidth*1/5;
  ellipseDisplayYdiamiter = appHeight*1/5;
}//End setup
//
void draw() {
  background(black);
  rect(Buttonx1, Buttony1, ButtonWidth1, Buttonheight1);
  rect(Buttonx2, Buttony2, ButtonWidth2, Buttonheight2);
  if ( rectON==true ) rect(rectDisplayx2,rectDisplayy2, rectDisplayWidth2, rectDisplayheight2); //Button 1
  if ( ellipseON==true ) ellipse(ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiamiter, ellipseDisplayYdiamiter); //Button 2
  //
  //text for Buttons
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  rectON=false;
  ellipseON=false;
  if ( mouseX>=Buttonx1 && mouseX<=Buttonx1+ButtonWidth1 && mouseY>=Buttony1 && mouseY<=Buttony1+Buttonheight1 ) rectON=true;
  if ( mouseX>=Buttonx2 && mouseX<=Buttonx2+ButtonWidth2 && mouseY>=Buttony2 && mouseY<=Buttony2+Buttonheight2 ) ellipseON=true;
}//End mousePressed
//
//End Main Program
