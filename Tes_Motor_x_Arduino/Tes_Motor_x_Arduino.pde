
import processing.serial.*;
Serial myPort;

int c1 = 200;
int c2 = 200;
int c3 = 200;
int c4 = 200;

void setup () {
  
  size (300, 200);
  rectMode (CENTER);
  printArray (Serial.list());
  myPort = new Serial (this, "/dev/cu.usbmodem14201", 9600);
  
}

void draw () {

  background (20);
  
  fill (c1, 90, 90);
  ellipse (70,height/2-50,50,50);
  fill (c2, 90, 90);
  ellipse (70,height/2+50,50,50);
  
  fill (c3, 200, 20);
  rect (width-70,height/2,50,50);
  fill (c4, 200, 20);
  rect (width-150,height/2,50,50);
  
  if (mouseX >= 70-50/2 && mouseX <= 70+50/2 && mouseY >= height/2-50-50/2 && mouseY <= height/2-50+50/2) {
    c1 = 255;
    if (mousePressed && mouseButton == LEFT) {
      myPort.write (1);
    }
  }
  else {
    c1 = 200;
  }
  
  if (mouseX >= 70-50/2 && mouseX <= 70+50/2 && mouseY >= height/2+50-50/2 && mouseY <= height/2+50+50/2) {
    c2 = 255;
    if (mousePressed && mouseButton == LEFT) {
      myPort.write (2);
    }
  }
  else {
    c2 = 200;
  }
  
  if (mouseX >= width-70-50/2 && mouseX <= width-70+50/2 && mouseY >= height/2-50 && mouseY <= height/2+50/2) {
    c3 = 255;
    if (mousePressed && mouseButton == LEFT) {
      myPort.write (3);
    }
  }
  else {
    c3 = 200;
  }
  
  if (mouseX >= width-150-50/2 && mouseX <= width-150+50/2 && mouseY >= height/2-50/2 && mouseY <= height/2+50/2) {
    c4 = 255;
    if (mousePressed && mouseButton == LEFT) {
      myPort.write (4);
    }
  }
  else {
    c4 = 200;
  }
  
}
