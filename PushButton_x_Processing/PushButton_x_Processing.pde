
import processing.serial.*;
Serial myPort;

int x = 200, xSpeed;
int val;

void setup () {

  size (400,400);
  //printArray (Serial.list());
  myPort = new Serial (this, "/dev/cu.usbmodem14201", 9600);
  
}

void draw () {
  
  background (20);
  
  if (myPort.available () > 0) {
    val = myPort.read ();
  }
  println (val);
  
  if (val == 1) {
    x = x + 2; 
  }
  if (val == 2) {
    x = x - 2;
  }
  if (val == 0) {
    x = x + 0;
  }
  
  fill (200, 255, 70);
  ellipse (x, height/2, 70,70);
  
}
