
// Open Arduino with the same file name

import processing.serial.*;
Serial myPort;

// Button

int c = 200;
int c1 = 200;
int c2 = 200;
int c3 = 200;

// Gear

int x = 80;

int val;

void setup () {

  size (500,260);
  rectMode (CENTER);
  
  printArray (Serial.list ());
  myPort = new Serial (this, "/dev/cu.usbmodem14201" , 9600);
  
  strokeWeight (3);
  
}

void draw () {

  background (20);
     
  if (myPort.available () > 0) {
    val = myPort.read ();
  } 
  
  println (val);
  
  //Button
  
  stroke (0);
  
  fill (c, 200, 70);
  rect (326, height/2-20, 60,60);
  
  fill (50, c1, 30);
  rect (422, height/2-20, 60,60);
  
  if (mouseX >= 326-30 && mouseX <= 326+30 && mouseY >= height/2-20-30 && mouseY <= height/2-20+30) {
    c = 255;
    
    if (mousePressed && mouseButton == LEFT) {
      myPort.write (1);
    }
    else {
      myPort.write (0);
    }
    
  }
  else {
    c = 200;
  }
  
  if (mouseX >= 422-30 && mouseX <= 422+30 && mouseY >= height/2-20-30 && mouseY <= height/2-20+30) {
    c1 = 255;
    
    if (mousePressed && mouseButton == LEFT) {
      myPort.write (2);
    }
    else {
      myPort.write (0);
    }
    
  }
  else {
    c1 = 200;
  }
  
  // Gear
  
  stroke (255);
  line (80,height/2-20,235,height/2-20);
  
  stroke (0);
  fill (c2, 60,30);
  ellipse (x, height/2-20, 30,30);
  
  if (mouseX >= x-15 && mouseX <= x+15 && mouseY >= height/2-15-20 && mouseY <= height/2+15-20) {
    c2 = 255;
    
    if (mousePressed && mouseButton == LEFT) {
      x = mouseX;
      
      if (x < 80) {
        x = 80;
      }
      if (x > 235) {
        x = 235;
      }
      
      myPort.write (x);
    }
    
  }
  else {
    c2 = 200;
  }
  
  // Start
  
  stroke (0);
  fill (200, 40, c3);
  rect (52,213, 40,40);
  
  if (mouseX >= 52-20 && mouseX <= 52+20 && mouseY >= 213-20 && mouseY <= 213+20) {
    c3 = 255;
    
    if (mousePressed && mouseButton == LEFT) {
      myPort.write (3);
    }
 
  }
  else {
    c3 = 200;
  }
  
  
}
