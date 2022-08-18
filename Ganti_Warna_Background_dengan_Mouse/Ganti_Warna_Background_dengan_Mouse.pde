
int cB = 200;

void setup () {
  
  size (400, 400);
  strokeWeight (3);
  
  
}

void draw () {
  
  background (cB);
  stroke (255);
  
  // batas
  
  line (0, 80, width, 80);
  line (0, 160, width, 160);
  line (0, 240, width, 240);
  line (0, 320, width, 320);
  
  // perintah
  
  if (mouseY >= 0 && mouseY <= 80) {
    cB = 200;
  }
  else if (mouseY > 80 && mouseY <= 160) {
    cB = 200/2;
  }
  else if (mouseY > 160 && mouseY <= 240) {
    cB = 100/2;
  }
  else if (mouseY > 240 && mouseY <= 320) {
    cB = 50/2;
  }
  else {
    cB = 0;
  }
  
}
