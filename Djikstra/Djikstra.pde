
float [] x_cek = new float [13];
float [] y_cek = new float [13];

void setup () {

  size (400, 400);
  rectMode (CENTER);
  
  strokeWeight (3);
  
}

float Acak (float atas, float bawah) {
  float hasil = bawah - atas;
  
  for (int i = 0; i < 10; i++) {
    hasil = hasil - (i);
  }
  
  return hasil;
}

void sirkuit (float x_awal, float y_awal, float x_tujuan, float y_tujuan) {
  
  stroke (0);
  
  // Titik awal
  fill (250, 250, 50);
  rect (x_awal, y_awal, 30,30);
  
  // Titik tujuan
  fill (#4AFCA4);
  rect (x_tujuan, y_tujuan, 30,30);
  
  // chekpoint
  fill (250);
  
  for (int i = 0; i < x_cek.length; i++) {
    
    x_cek[i] = Acak (x_awal+40, x_tujuan-40);
    y_cek[i] = Acak (y_awal+40, y_tujuan-40);
    print (x_cek[i], y_cek[i]);
    
    ellipse (x_cek[i], y_cek[i], 30,30); 
    
  }
  
}

void draw () {
  
  background (20);
  
  sirkuit (50,50,width-50,height-50); 
  
}
