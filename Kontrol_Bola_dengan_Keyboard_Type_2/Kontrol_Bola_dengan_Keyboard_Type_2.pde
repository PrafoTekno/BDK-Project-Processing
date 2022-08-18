
int x = 200, y = 200;

void setup () {
  
  size (300, 300);
  strokeWeight (3);
  
}

void draw () {
  
  background (200);
  
  stroke (0);
  
  fill (#FAE847);
  ellipse (x, y, 40,40);
  
  if (key == 'a') {
    x = x - 1;
  }
  
  else if (key == 'd') {
    x = x + 1;
  }
  
  else if (key == 'w') {
    y = y - 1;
  }
  
  else if (key == 's') {
   y = y + 1;
  }
  
  if (x < -10) {
    x = width + 10;
  }
  
  if (x > width + 10) {
    x = -10;
  }
  
  if (y < -10) {
    y = height + 10;
  }
  
  if (y > height + 10) {
    y = -10;
  }
  
}
