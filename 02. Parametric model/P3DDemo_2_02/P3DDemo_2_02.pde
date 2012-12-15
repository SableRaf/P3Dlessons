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
  size(600,600,P3D);
  sides = 10;
  angle = 360f / sides;
  r = 100;
  h = 200;
  halfHeight = h/2;
}

void draw() {
  translate(width/2, height/2);
  
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
}

