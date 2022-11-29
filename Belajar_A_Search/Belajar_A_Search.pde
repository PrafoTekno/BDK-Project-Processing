
int [][] i = new int [12][12];

void setup () {
  
  size (400,400);
  rectMode (CENTER);
  
  textAlign (CENTER, CENTER);
  
}

void draw () {
  
  background (20);  
    
  //Papan 
  
  for (int s = 0; s < 12; s++) {
    for (int r = 0; r < 12; r++) {
      i[s][r] = (s+1)*(r+1);
    }
  }
  
  stroke (255);
    
   for (int y = 30; y < height-30; y += 30) {
     for (int x = 35; x < width-20; x += 30) {
      
       noFill ();
       rect (x, y, 30,30);
        
       if ((x-30)/30 == 0 || (y-30)/30 == 0) {
         fill (255);
         text (i[(x-30)/30][(y-30)/30],x,y);
       }
      
      }
   }
  
  // Titik start (i[2][2]) = 3,3 dan titik end (i[10][9]) = 11,10
  
  stroke (0);
  
  fill (0,255,0);
  rect (95,90,30,30);  
  
  fill (255,0,0);
  rect (335,300,30,30);
  
}

int jarak_ke_start (int a) {
  return 0;
}
