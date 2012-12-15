// number of grid points horizontal
int xCount = 30;
// number of grid points vertical
int yCount = 30;
 
void setup() {
  size(800, 800, P3D);
}
 
 
void draw() {
 
  background(150);
  fill(255);
 
  scale(20);
 
  // draw mesh
  for (int y = 0; y <= yCount; y++) { 
    for (int x = 0; x <= xCount; x++) {
      beginShape();
      
      float z = sin(sqrt(x*x+y*y));
      vertex(x, y, z);
      
      z = sin(sqrt(x*x+(y+1)*(y+1)));
      vertex(x, y+1, z);
      
      z = sin(sqrt((x+1)*(x+1)+(y+1)*(y+1)));
      vertex(x+1, y+1, z);
      
      z = sin(sqrt((x+1)*(x+1)+y*y));
      vertex(x+1, y, z); 
      
      endShape(CLOSE);
    }
  }
}
