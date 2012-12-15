/* 
 * Original tutorial by Jan Vantomme 
 * http://vormplus.be/blog/article/drawing-a-cylinder-with-processing 
 */

int sides;
float angle;
float r;
float h;
float halfHeight;

void setup() {
  size(600, 600, P3D);
  sides = 30;
  angle = 360f / sides;
  r = 100;
  h = 200;
  halfHeight = h/2;
  
  lights();
  
  colorMode(HSB);
  
  noStroke();
}

void draw() {
  background(150);
  translate(width/2, height/2);
  
  rotateX( frameCount*0.01 );
  rotateY( frameCount*0.01 );

fill(255);
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
    fill(map(i, 0, sides-1, 0, 255), 255, 150);
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight);
    vertex( x, y, -halfHeight);
  }
  endShape(CLOSE);
}

