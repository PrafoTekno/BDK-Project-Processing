
float x_prediksi = 20, y_prediksi = 20;
float x_sebenarnya = -50, y_sebenarnya = -50; 
float resultan_actual, resultan_predict;

float nilai = 100;
float gradien = 2, error;
float x_kof = 100, y_kof = 100;

int cT = 200;
int val = 0;

void setup () {
  
  size (400,400);
  rectMode (CENTER);
  strokeWeight (3);
  
  textAlign (CENTER, CENTER);
  
}

void draw () {

  background (20);  
  Itung ();
  Aktivitas ();
  
}

float fungsi_x (float x, float m) {
  return m * x;
}

float fungsi_y (float y, float m) {
  return m * y;
}
float fungsi_resultan (float x, float y) {
  return sqrt ((x*x) + (y*y)) * 0.1;
}

void Itung () {
  
  stroke (0);
  
  // Tombol
  
  fill (cT,20,60);
  rect (295,50,50,50);
  fill (0);
  textSize (30);
  text ("R",295,50);
  
  // Nilai
  
  fill (255,240,70);
  rect (width/2-45,50,150,50);
  
  stroke (250);
  line (0,95,width,95);
  stroke (0);
  line (width/2-45,50-25,width/2-45,50+25);
    
  // Perintah 
  
  x_prediksi = fungsi_x (x_kof,gradien);
  y_prediksi = fungsi_y (y_kof,gradien);
  
  if (mouseX >= 295-25 && mouseX <= 295+25 && mouseY >= 50-25 && mouseY <= 50+25) {
    cT = 255;
    
    if (mousePressed) {
      
      x_sebenarnya = random (35,width-30);
      y_sebenarnya = random (125,height-30);
            
      val = 1;
    
    }
    
  } 
  else {
    cT = 200;
  }
  
  fill (0);
  textSize (16);
  text (x_sebenarnya, width/2-85, 50);
  text (y_sebenarnya, width/2-10, 50); 
  
}

void Aktivitas () {

  resultan_actual = fungsi_resultan (x_sebenarnya, y_sebenarnya);
  resultan_predict = fungsi_resultan (x_prediksi, y_prediksi);
  
  error = abs (resultan_actual - resultan_predict);
  println (error);
  
  // Sebenarnya
  
  stroke (0);
  
  fill (#1AFFAD);
  rect (x_sebenarnya, y_sebenarnya, 40,40);
  
  // Prediksi
  
  fill (#FFC9EF);
  rect (x_prediksi, y_prediksi, 40,40);
  
  /*
  while (error > 0) {
    
    gradien += 0.01;
    println (error);
  
  }
  */
  
    
}
