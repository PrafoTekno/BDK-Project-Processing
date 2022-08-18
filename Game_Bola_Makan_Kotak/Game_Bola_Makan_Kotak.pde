
int xPlayer = 100, yPlayer = 100;
float xBot = 200, yBot = 200;  
int score = 0;

void setup () {

  size (300,300);
  rectMode (CENTER);
  
  textAlign (CENTER, CENTER);
  
  strokeWeight (3);
  
}

void Player () {
  
  fill (255,40,20);
  ellipse (xPlayer, yPlayer, 40,40);
  
  // Kontrol
  
  if (key == 'a') {
    xPlayer = xPlayer - 3;
  }
  else if (key == 'd') {
    xPlayer = xPlayer + 3;
  }
  else if (key == 'w') {
    yPlayer = yPlayer - 3;
  }
  else if (key == 's') {
    yPlayer = yPlayer + 3;
  }
  
  // Kondisi 
  
  if (xPlayer <= 0 || xPlayer >= width || yPlayer <= 0 || yPlayer >= height) {
  
    xPlayer = 100;
    yPlayer = 100;
    
    xBot = 200;
    yBot = 200;
    
    score = 0;
  
  }
  
}

void Bot () {
  
  fill (255,240,0);
  rect (xBot, yBot, 30,30);
  
  if (xPlayer >= xBot-15 && xPlayer <= xBot+15 && yPlayer >= yBot-15 && yPlayer <= yBot+15) {
    
    score += 1;
    xBot = random (30, width-30); 
    yBot = random (30, height-30);
    
  } 
  
}

void draw () {

  background (20);
  
  stroke (0);
  
  Bot ();
  Player ();
   
  fill (255);  
  textSize (22);
  text (score, 30,30);
  
}
