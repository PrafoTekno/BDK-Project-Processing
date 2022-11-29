
float x = 150, y = 150 + 100;
float xSpeed = 0;

int index_batas = 0;
int index = -1;

int peluru = 90000;

float [] x_tembak = new float [peluru];
float [] y_tembak = new float [peluru];

void setup () {
  
  size (300,300);
  rectMode (CENTER);
  
  textAlign (CENTER,CENTER);
  
}

void draw () {
  
  background (20);
  
  stroke (0);
 
  fill (#FCCB03);
  rect (x,y,30,30);
  
  if (keyPressed) {
  
    if (key == 'a') {
      xSpeed = -1;
    }
    if (key == 'd') {
      xSpeed = 1;
    }
    if (key == 'k') {
      index_batas++;
      index++;
    }
    
  }
  
  x = x + xSpeed;
  tembakan ();
  
}

void tembakan () {
  
  x_tembak[index+1] = x; 
  y_tembak[index+1] = y;
  
  for (int i = 0; i < index_batas; i++) {
    
    fill (255);
    rect (x_tembak[i],y_tembak[i],5,10);
    
    y_tembak[i] = y_tembak[i] - 3.5;
    
  } 
  
}
