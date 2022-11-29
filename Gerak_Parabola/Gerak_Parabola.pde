
float x = 30;
float y = 150 + 30;
float v = -2, theta = 30;

void setup () {

  size (500, 300);
  strokeWeight (3);
  
}

void draw () {
  
  background (20);
  
  fill (#FFF303);
  ellipse (x, y, 30,30);
  
  if (key == 'm') {
    theta = theta + 0.07;
  }
  
   x = width/2 + cos (theta) * 50;
   y = height/2 + sin (theta) * 50;
  
}
