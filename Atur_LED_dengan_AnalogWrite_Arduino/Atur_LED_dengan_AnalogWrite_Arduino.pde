
import processing.serial.*;
Serial myPort;
int x = 40;

void setup () {

  size (300,200);
  rectMode (CENTER);
  
  strokeWeight (3);
  printArray (Serial.list());
  myPort = new Serial (this, "/dev/cu.usbmodem14201", 9600);
  
}

void draw () {
  
  background (20);
  
  stroke (255);
  line (40,height/2,width-40,height/2);
  
  stroke (0);
  fill (#FCCB03);
  ellipse (x, height/2, 40,40);
  
  if (mouseX >= x-20 && mouseX <= x+20 && mouseY >= height/2-20 && mouseY <= height/2+20) {
    if (mousePressed) {
      x = mouseX;
    }
  }
  
  if (x <= 40) {
    x = 40;
  }
  if (x >= width-40) {
    x = width-40;
  }
  
  myPort.write (x);
  
}
