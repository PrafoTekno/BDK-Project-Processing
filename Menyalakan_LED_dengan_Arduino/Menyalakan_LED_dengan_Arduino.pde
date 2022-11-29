
import processing.serial.*;
Serial myPort;

int nyala = 0;

void setup () {
  
  size (300, 300);
  rectMode (CENTER);
  
  strokeWeight (3);
  
  //printArray (Serial.list());
  myPort = new Serial (this, "/dev/cu.usbmodem14201", 9600);
  
}

void draw () {
  
  background (20);
  
  stroke (0);
  
  fill (255,250,6);
  rect (width/2,height/2,40,40);
  
  if (mouseX >= width/2-20 && mouseX <= width/2+20 && mouseY >= height/2-20 && mouseY <= height/2+20) {
  
    if (mousePressed && mouseButton == LEFT) {
      
      nyala++;
      delay (500);
      
      if (nyala > 1) {
        nyala = 0;
      }
      
    }
  }
  
  myPort.write (nyala);
  
}
