// number of grid points horizontal
int xCount = 30;
// number of grid points vertical
int yCount = 30;

float offsetX = xCount*0.5;
float offsetY = yCount*0.5;
 
void setup() {
  size(800, 800, P3D);
}
 
 
void draw() {
 
  background(150);
  fill(255);
  
  translate(width*0.5,height*0.5);
  
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
 
  scale(20);
  
  randomSeed(123);
 
  // draw mesh
  for (int iY = 0; iY < yCount; iY++) {
    for (int iX = 0; iX <= xCount; iX++) {
      pushMatrix();
      beginShape();
      
      float x = iX - offsetX;
      float y = iY - offsetY;
      
      float z1 = sin(sqrt(x*x+y*y)-20*sin(radians(frameCount))); 
      float z2 = sin(sqrt(x*x+(y+1)*(y+1))-20*sin(radians(frameCount)));
      
      translate(0,0,sin(sqrt(x*x+y*y)) + random(map(mouseX, 0, width, -10, 10)));
      
      vertex(x, y, z1);
      vertex(x, y+1, z2);
      vertex(x+1, y+1, z2);
      vertex(x+1, y, z1);
      endShape(CLOSE);
      popMatrix();
    }
  }
}
