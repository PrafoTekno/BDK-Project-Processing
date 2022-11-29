
import processing.serial.*;
Serial myPort;

int itung = 0;

void setup () {
  
  size (300,300);
  rectMode (CENTER);
  
  strokeWeight (3);
  
  printArray (Serial.list ());
  myPort = new Serial (this, "/dev/tty.usbmodem14201", 9600);
  
}

void draw () {
  
  background (20);
  
  stroke (0);
  fill (255,250,20);
  
  rect (width/2, height/2, 40,40);
  
  if (mouseX >= width/2-20 && mouseX <= width/2+20 && mouseY >= height/2-20 && mouseY <= height/2+20) {
    if (mousePressed && mouseButton == LEFT) {
      
      itung ++;
      delay (500);
      
      if (itung > 1) {
        itung = 0;
      }
      
    }
    
  }
  
  myPort.write (itung);
  
}
