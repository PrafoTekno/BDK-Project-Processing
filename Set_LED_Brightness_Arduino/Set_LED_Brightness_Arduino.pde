
import processing.serial.*;
Serial myPort;

int x = 40;

void setup () {
  
  size (300, 100);  
  strokeWeight (3);
  
  printArray (Serial.list ());
  myPort = new Serial (this, "/dev/cu.usbserial-1410", 9600);
  
}

void draw () {

  background (20);
  
  // Lintasan
  stroke (255);
  line (40, height/2, width-40, height/2);
  
  // Skala
  
  stroke (0);
  fill (#2BFA6A);
  ellipse (x,height/2,30,30);
  
  if (mouseX >= x-15 && mouseX <= x+15 && mouseY >= height/2-15 && mouseY <= height/2+15) {
    if (mousePressed && mouseButton == LEFT) {
      x = mouseX;
    }
  }
  
  if (x < 40) {
    x = 40;
  }
  if (x > width-40) {
    x = width-40;
  }
  
  myPort.write (x);
  
}
