
void setup () {
  
  size (300, 300);
  strokeWeight (3);
  rectMode (CENTER);
  
}

void draw () {
  
  background (20);
  stroke (255);
  
  for (int y = 0; y < height; y += 40) {
    for (int x = 0; x < width; x += 40) {
      
      fill (random (100,255));
      rect (x,y,40,40);
      
      if (x % 20 == 0 || y % 20 == 0) {
        continue;
      }
      
    }
  }
  
}
