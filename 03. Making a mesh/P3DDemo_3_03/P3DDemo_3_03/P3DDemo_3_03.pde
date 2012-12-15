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
  
  lights();
  
  //translate(width*0.5,height*0.5);
  
  //rotateX( frameCount*0.01 );
  //rotateY( frameCount*0.01 );
 
  scale(20);
 
  // draw mesh
  for (int y = 0; y <= yCount; y++) { 
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= xCount; x++) {
      float z = sin(sqrt(x*x+y*y));
      vertex(x, y, z);
 
      z = sin(sqrt(x*x+(y+1)*(y+1)));
      vertex(x, y+1, z);
    }
    endShape();
  }
}
