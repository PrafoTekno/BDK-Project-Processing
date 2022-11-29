
// Ball
float x, y;
float rotate;

// Button
int c = 200, status;
float t;

void setup () {
  
  size (300, 300);
  rectMode (CENTER);
  
  strokeWeight (3);
  
}

void draw () {
  
  background (20);
  stroke (0);
  
  Button ();
  Ball (t);
  
}

/*
  Push the button to play and add the speed
*/

void Button () {

    fill (200,c,60);
    rect (width/2,height/2,40,40);
    
    if (mouseX >= width/2 - 20 && mouseX <= width/2 + 20 && mouseY >= height/2 - 20 && mouseY <= height/2 + 20) {
      c = 255;
      if (mousePressed && mouseButton == LEFT) {
        if (t <= 0.06) {
          t = t + 0.01;
          delay (200);
        }
        else {
          t = 0;
        }
      }
    }
    else {
      c = 200;
    }
    
    println (t);

}

void Ball (float r) {

    fill (255, 200, 40);
    ellipse (x,y,40,40);
    
    x = width/2 + cos(rotate) * 100;
    y = height/2 + sin(rotate) * 100;
  
    rotate = rotate + r;
  
}
