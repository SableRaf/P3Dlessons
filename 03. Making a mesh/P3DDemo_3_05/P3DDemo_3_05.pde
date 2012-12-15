// number of grid points horizontal
int xCount = 30;
// number of grid points vertical
int yCount = 30;

float offsetX = xCount*0.5;
float offsetY = yCount*0.5;
 
void setup() {
  size(800, 800, P3D);
  noStroke();
  colorMode(HSB);
}
 
 
void draw() {
 
  background(150);
  fill(255);
  
  translate(width*0.5,height*0.5);
  
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
 
  scale(20);
  
  //randomSeed(123);
 
  // draw mesh
  for (int iY = 0; iY < yCount; iY++) {
    beginShape(QUAD_STRIP);
    for (int iX = 0; iX <= xCount; iX++) {
      
      float c = random(0, 50);
      fill(c, 255, 255);
      
      float x = iX - offsetX;
      float y = iY - offsetY;
      float r = sin(radians( random(frameCount) ));
      float z = sin(sqrt(x*x+y*y)) + r;
      vertex(x, y, z);
 
      z = sin(sqrt(x*x+(y+1)*(y+1))) + r;
      vertex(x, y+1, z);
    }
    endShape();
  }
}
