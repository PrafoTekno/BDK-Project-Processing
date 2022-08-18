
PVector position;
PVector velocity;

void setup () {

  size (300, 300);
  
  position = new PVector (width/2, height/2);
  velocity = new PVector (2,4);

}

void draw () {

  background (20);
  
  position.add(velocity);
  
  fill (random (20,250),40,70);
  ellipse (position.x, position.y, 50,50);
  
  // Kondisi
  
  if (position.x > width || position.x < 0) {
    velocity.x = velocity.x * -1;
  }
  else if (position.y > height || position.y < 0) {
    velocity.y = velocity.y * -1;
  }
  
}
