
import processing.video.*;
import java.io.File;
Capture cam;
int x = 0;
int Scale = 200;
String Destination = "/Users/davidweiss/Documents/Processing/MachineLearn/image/letter"+x+".png";
void setup() {
  size(1280 , 720);
  stroke(255);
  surface.setResizable(true);
  //photo.resize(28,28);
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
      println(i);
      
    }
  }
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
    
}
void draw() {
  
 
 if (cam.available() == true) {
    cam.read();
    cam.filter(INVERT);
  }

  
  image(cam, 0, 0);
  noFill();
  PImage photo;
  rect(mouseX, mouseY, Scale, Scale);
  
   if (mousePressed == true){
       photo = get(mouseX+2,mouseY+2,Scale-2,Scale-2);
       photo.resize(28,28);
       photo.save(Destination);
       x = (x+1)%10;
     }
 }
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      Scale = Scale + 20;
    } else if (keyCode == DOWN) {
      Scale = Scale - 20;
    } 
  } 
}

  

 
 