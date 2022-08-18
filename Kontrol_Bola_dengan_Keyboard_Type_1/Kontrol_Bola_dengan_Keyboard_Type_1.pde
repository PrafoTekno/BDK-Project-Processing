
int x = 150, y = 150;

void setup () {

  size (300, 300);
  rectMode (CENTER);
  strokeWeight (3);
  
}

void draw () {
  
  background (20);
  
  stroke (0);
  fill (#47FADA);
  
  ellipse (x, y, 40,40);
 
  // Kontrol
  
  if (keyPressed) {
  
    if (key == 'a') {
      x = x - 1;
    }
    
    if (key == 'd') {
      x = x + 1;
    }
    
    if (key == 's') {
      y = y + 1;
    }
    
    if (key == 'w') {
      y = y - 1;
    }
    
  }
  
  // Kondisi
  
  if (x > width + 10) {
    x = -10;
  }
  
  if (x < -10) {
    x = width + 10;
  }
  
  if (y > height + 10) {
    y = -10;
  }
  
  if (y < -10) {
    y = height + 10;
  }
  
}
