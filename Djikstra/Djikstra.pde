
float [] jarak = new float [12];

void setup () {

  size (400,400);
  rectMode (CENTER);
  
  textAlign (CENTER, CENTER);
  strokeWeight (3);
  
  for (int i = 0; i < jarak.length; i++) {
    jarak[i] = random (1,8);
  }
  
}

void draw () {

  background (20);
  
  // Lintasan
  
  fill (255);
  stroke (0);
  
  rect (60,200,30,30);
  rect (200,70,30,30);
  rect (160,160,30,30);
  rect (120,280,30,30);
  rect (300,170,30,30);
  rect (257,241,30,30);
  rect (231,322,30,30);
  
  fill (255,250,20);
  ellipse (50,50,30,30);
  fill (0,255,20);
  ellipse (350,350,30,30);
  
  stroke (100);
  line (50,50,60,200);
  line (50,50,200,70);
  line (60,200,200,70);
  line (60,200,160,160);
  line (200,70,300,170);
  line (160,160,300,170);
  line (160,160,257,241);
  line (160,160,120,280);
  line (120,280,231,322);
  line (231,322,257,241);
  line (231,322,350,350);
  line (257,241,350,350);
 
  fill (255);
  textSize (10);
  text (jarak[0],122,55);
  text (jarak[1],50,127);
  text (jarak[2],132,129);
  text (jarak[3],250,159);
  text (jarak[4],246,115);
  text (jarak[5],172,307);
  text (jarak[6],116,185);
  text (jarak[7],142,225);
  text (jarak[8],210,200);
  text (jarak[9],302,292);
  text (jarak[10],242,282);
  text (jarak[11],286,342);
  
  println (mouseX, mouseY);
  
}
