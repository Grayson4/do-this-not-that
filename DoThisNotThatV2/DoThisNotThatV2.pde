//global Variables
float Buttonx1, Buttony1, ButtonWidth1, ButtonHeight1;
//float Buttonx2, Buttony2, ButtonWidth2, ButtonHeight2;
float rectDisplayx2,rectDisplayy2, rectDisplayWidth2, rectDisplayHeight2;
float ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiamiter, ellipseDisplayYdiamiter;
color black=#000000, white=#FFFFFF;
Boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
//String buttonText2= "Or Me";
PFont buttonFont;
color blue = #221CEA; //Note Not Night Mode Friendly, all of the blue is included

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
  ButtonHeight1 = appHeight*1/4;
  /*Buttonx2 = centerX + appWidth*1/4;
  Buttony2 = Buttony1;
  ButtonWidth2 = ButtonWidth1;
  ButtonHeight2 = ButtonWidth1;*/
  rectDisplayx2 = centerX - appWidth*1/4;
  rectDisplayy2 = centerY - appHeight*1/4;
  rectDisplayWidth2 = ButtonWidth1;
  rectDisplayHeight2 = ButtonHeight1;
  ellipseDisplayX = Buttonx1;
  ellipseDisplayY = rectDisplayy2;
  ellipseDisplayXdiamiter = appWidth*1/5;
  ellipseDisplayYdiamiter = appHeight*1/5;
  //
  //Text setup
 //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("MS Gothic", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}//End setup
//
void draw() {
  background(black);
  rect(Buttonx1, Buttony1, ButtonWidth1, ButtonHeight1);
  //rect(Buttonx2, Buttony2, ButtonWidth2, ButtonHeight2);
  if ( rectON==true ) rect(rectDisplayx2,rectDisplayy2, rectDisplayWidth2, rectDisplayHeight2); //Button 1
  if ( ellipseON==true ) ellipse(ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiamiter, ellipseDisplayYdiamiter); //Button 2
  //
  //text for Buttons
  fill(blue);
  textAlign (CENTER,CENTER);
  textFont(buttonFont, 25);
  //
  text(buttonText1, Buttonx1, Buttony1, ButtonWidth1, ButtonHeight1);
  //text(buttonText2, Buttonx2, Buttony2, ButtonWidth2, ButtonHeight2);
  fill(white);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  //rectON=false;
  //ellipseON=false;
  if ( mouseX>=Buttonx1 && mouseX<=Buttonx1+ButtonWidth1 && mouseY>=Buttony1 && mouseY<=Buttony1+ButtonHeight1 ) { 
    if ( rectON=true ) {
      rectON=false;
      ellipseON=true;
    } else {
      rectON=true;
      ellipseON=false;
    }
  }//End Button1
  //if ( mouseX>=Buttonx2 && mouseX<=Buttonx2+ButtonWidth2 && mouseY>=Buttony2 && mouseY<=Buttony2+ButtonHeight2 ) ellipseON=true;
}//End mousePressed
//
//End Main Program
