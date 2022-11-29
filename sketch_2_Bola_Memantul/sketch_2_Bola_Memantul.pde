
PVector [] position = new PVector [2];
PVector [] velocity = new PVector [2];

int top, bottom, left, right;

void setup () {

  size (500,350);
  strokeWeight (3);
  rectMode (CENTER);  
  
  textAlign (CENTER, CENTER);
  
  position[0] = new PVector (width/2,height-60);
  velocity[0] = new PVector (4,8);
  position[1] = new PVector (30,height/2);
  velocity[1] = new PVector (3,7);
  
}

void draw () {

  background (20);
  Tamplate ();
  Bola_Garis ();
   
}

void Tamplate () {

  fill (50);
  stroke (255);
  
  rect (width/2, height/2+30, 440, 225);
  
}

void Bola_Garis () {
  
  position[0].add (velocity[0]);
  position[1].add (velocity[1]);
  
   if (position[0].x >= width/2 + 220) {
     velocity[0].x = velocity[0].x * -1;
     right += 1;
   }
   else if (position[0].x <= width/2 - 220) {
     velocity[0].x = velocity[0].x * -1;
     left += 1;
   }
   if (position[0].y >= height/2+30 + 225/2) {
    velocity[0].y = velocity[0].y * -1;
    bottom += 1;
   }
   else if (position[0].y <= height/2+30 - 225/2) {
     velocity[0].y = velocity[0].y * -1;
     top += 1;
   }
   
   if (position[1].x >= width/2 + 220) {
     velocity[1].x = velocity[1].x * -1;
     right += 1;
   }
   else if (position[1].x <= width/2 - 220) {
     velocity[1].x = velocity[1].x * -1;
     left += 1;
   }
   if (position[1].y >= height/2+30 + 225/2) {
    velocity[1].y = velocity[1].y * -1;
    bottom += 1;
   }
   else if (position[1].y <= height/2+30 - 225/2) {
     velocity[1].y = velocity[1].y * -1;
     top += 1;
   }
   
   if (position[0].x >= position[1].x - 15 && position[0].x <= position[1].x + 15 && position[0].y >= position[1].y - 15 && position[0].y <= position[1].y + 15) {
     //velocity[0].x = velocity[0].x * -1;
     velocity[0].y = velocity[0].y * -1;
     //velocity[1].x = velocity[1].x * -1;
     velocity[1].y = velocity[1].y * -1;
   }       
   
   stroke (255);
   line (position[1].x,position[1].y, position[0].x, position[0].y);
   
   stroke (0);
   fill (255,250,90);
   ellipse (position[0].x, position[0].y, 30,30);
   
   fill (255,90,250);
   ellipse (position[1].x, position[1].y, 30,30);
   
   fill (255);
   textSize (15);
   text ("Top :",70,50);
   text ("Right :",width/4+60,50);
   text ("Left :",width/2+40,50);
   text ("Bottom :",width/2+150,50);
   text (top,70+28,50);
   text (right,width/4+60+35,50);
   text (left,width/2+40+28,50);
   text (bottom,width/2+150+44,50);
   
   println (right);
  
}
