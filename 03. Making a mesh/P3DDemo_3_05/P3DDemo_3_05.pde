// number of grid points horizontal
int xCount = 30;
// number of grid points vertical
int yCount = 30;

float offsetX = xCount*0.5;
float offsetY = yCount*0.5;
 
void setup() {
  size(800, 800, P3D);
  frameRate(30);
}
 
 
void draw() {
 
  background(150);
  fill(255);
  
  translate(width*0.5,height*0.5);
  
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
 
  scale(20);
 
  // draw mesh
  for (int iY = 0; iY < yCount; iY++) {
    
    for (int iX = 0; iX <= xCount; iX++) {
      
      beginShape();
      
      float x = iX - offsetX;
      float y = iY - offsetY;
      
      float wave = frameCount*.1;
      
      float z = sin(sqrt(x*x+y*y)-wave);
      vertex(x, y, z);
      
      z = sin(sqrt(x*x+(y+1)*(y+1))-wave);
      vertex(x, y+1, z);
      
      z = sin(sqrt((x+1)*(x+1)+(y+1)*(y+1))-wave);
      vertex(x+1, y+1, z);
      
      z = sin(sqrt((x+1)*(x+1)+y*y)-wave);
      vertex(x+1, y, z); 
      
      endShape(CLOSE);
    }
  }
}
