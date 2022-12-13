
int x = 200, y = 380;
int xspeed = 0;

PVector position;
PVector velocity;

int menang_user = 0, menang_AI = 0;

void setup () {
  
  size (400, 400);
  rectMode (CENTER);
  
  strokeWeight (3);
  textAlign (CENTER, CENTER);
  
  position = new PVector (200,200);
  velocity = new PVector (2,4);
  
}

void draw () {

  background (20);
  
  stroke (255);
  line (0,height/2,width,height/2);
  
  x = x + xspeed;
  
  if (keyPressed) {
    if (key == 'a') {
      xspeed = -2;
    }
    if (key == 'd') {
      xspeed = 2;
    }
  }
  
  stroke (0);
  
  fill (255,200,30);
  rect (x,y,100,20);
  
  position.add (velocity);
  
  if (position.x > width) {
    velocity.x = velocity.x * -1;
  }
  if (position.x < 0) {
    velocity.x = velocity.x * -1;
  }
  if (position.y > height) {
    
    menang_AI++;
    position.x = width/2;
    position.y = height/2;
    
  }
  if (position.y < 0) {
    
    menang_user++;
    position.x = width/2;
    position.y = height/2;
    
  }
  if (position.x >= x-50 && position.x <= x+50 && position.y >= y-10 && position.y <= y+10) {
    velocity.y = velocity.y * -1;
  }
  if (position.x >= position.x-50 && position.x <= position.x+50 && position.y >= 20-10 && position.y <= 20+10) {
    velocity.y = velocity.y * -1;
  }
  
  fill (255,90,10);
  ellipse (position.x, position.y, 30,30);
  
  // AI
  
  fill (255,200,30);
  rect (position.x*0.5, 20, 100,20);
  
  textSize (30);
  fill (230);
  
  text (menang_AI,50,height/2 - 70);
  text (menang_user,350,height/2 + 70);
  
}
