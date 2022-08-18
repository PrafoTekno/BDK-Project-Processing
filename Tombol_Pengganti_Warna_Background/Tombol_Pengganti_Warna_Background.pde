
int c = 200;
int cB = 50;

void setup () {
  
  size (300, 300);
  rectMode (CENTER);
  strokeWeight (3);
  
}

void draw () {
  
  background (cB);
  
  stroke (0);
  
  fill (c,40,90);
  rect (width/2, height/2, 50,50);
  
  if (mouseX >= width/2-25 && mouseX <= width/2+25 && mouseY >= height/2-25 && mouseY <= height/2+25) {
    c = 255;
    
    if (mousePressed && mouseButton == LEFT) {
      cB = 200;
    } 
    else {
      cB = 50;
    }
  } 
  else {
    c = 200;  
  }
  
}
