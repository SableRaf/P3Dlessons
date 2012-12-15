// number of grid points horizontal
int xCount = 4;
// number of grid points vertical
int yCount = 4;
 
void setup() {
  size(400,400,P3D);
 
  fill(255); 
}
 
 
void draw() {
  background(150);
 
  translate(width*0.5,height*0.5);
  
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
 
  scale(40);
 
  // Draw Mesh
  for (int y = 0; y < yCount; y++) {
    for (int x = 0; x <= xCount; x++) {
      beginShape();
      vertex(x, y, 0);
      vertex(x, y+1, 0);
      vertex(x+1, y+1, 0);
      vertex(x+1, y, 0);
      endShape();
    }
  }
}
