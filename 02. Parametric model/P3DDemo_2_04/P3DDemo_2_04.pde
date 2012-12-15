/* 
 * Original tutorial by Jan Vantomme 
 * http://vormplus.be/blog/article/drawing-a-cylinder-with-processing 
 */

int sides;
float r;
float h;

void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(150);
  translate(width/2, height/2);
  
  pushMatrix();
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
  drawCylinder(20, 100, 200);
  popMatrix();
  
}

void drawCylinder(int sides, float r, float h) {
  
  float  halfHeight = h/2;
  float angle = 360f / sides;
  
   // draw top shape
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, -halfHeight );
  }
  endShape(CLOSE);

  // draw bottom shape
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight );
  }
  endShape(CLOSE);

  // draw body
  beginShape(QUAD_STRIP);
  for (int i = 0; i < sides + 1; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight);
    vertex( x, y, -halfHeight);
  }
  endShape(CLOSE); 
}
