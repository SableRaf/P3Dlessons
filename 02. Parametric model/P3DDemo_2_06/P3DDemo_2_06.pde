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
  
  pushMatrix();
  translate(width/4, height/4);
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
  drawCylinder(20, 50, 60, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/4*3, height/4);
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
  drawCylinder(15, 90, 40, 40);
  popMatrix();
  
  pushMatrix();
  translate(width/4, height/4*3);
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
  drawCylinder(7, 50, 10, 70);
  popMatrix();
  
  pushMatrix();
  translate(width/4*3, height/4*3);
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );
  drawCylinder(90, 20, 80, 100);
  popMatrix();
  
  
}

void drawCylinder(int sides, float r1, float r2, float h) {
  
  float  halfHeight = h/2;
  float angle = 360f / sides;
  
   // draw top shape
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r1;
    float y = sin( radians( i * angle ) ) * r1;
    vertex( x, y, -halfHeight );
  }
  endShape(CLOSE);

  // draw bottom shape
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r2;
    float y = sin( radians( i * angle ) ) * r2;
    vertex( x, y, halfHeight );
  }
  endShape(CLOSE);

  // draw body
  beginShape(QUAD_STRIP);
  for (int i = 0; i < sides + 1; i++) {
    float x1 = cos( radians( i * angle ) ) * r1;
    float y1 = sin( radians( i * angle ) ) * r1;
    float x2 = cos( radians( i * angle ) ) * r2;
    float y2 = sin( radians( i * angle ) ) * r2;
    vertex( x1, y1, -halfHeight);
    vertex( x2, y2, halfHeight);
  }
  endShape(CLOSE); 
}
