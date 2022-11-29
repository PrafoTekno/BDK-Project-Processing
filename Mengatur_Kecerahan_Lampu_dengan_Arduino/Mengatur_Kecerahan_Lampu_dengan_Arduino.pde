
import processing.serial.*;
Serial myPort;

int x = 40;
int y = 100;

void setup () {
  
  size (400, 200);
  
  printArray (Serial.list());
  myPort = new Serial (this, "/dev/cu.usbmodem14201", 9600);
  
  strokeWeight (3);
    
}

void draw () {
  
  background (20);
  
  stroke (255);
  line (40,height/2,width-40,height/2);
  
  stroke (0);
  fill (255,200,70);
  
  ellipse (x,y,40,40);
  
  if (mouseX >= x-20 && mouseX <= x+20 && mouseY >= y-20 && mouseY <= y+20) {
    
    if (mousePressed && mouseButton == LEFT) {
      x = mouseX;
    }
    
  }
  
  if (x > 360) {
    x = 360;
  }
  else if (x < 40) {
    x = 40;
  }
  
  myPort.write (x);
  
}
