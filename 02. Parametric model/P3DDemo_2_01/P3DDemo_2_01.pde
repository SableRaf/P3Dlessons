/* 
 * Original tutorial by Jan Vantomme 
 * http://vormplus.be/blog/article/drawing-a-cylinder-with-processing 
 */

int sides;
float angle;
float r;

void setup() {
  size(600,600,P3D);
  sides = 10;
  angle = 360 / sides; 
  r = 100; // This is the radius of our cylinder
}

void draw() {
  translate(width/2, height/2);
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y );
  }
  endShape(CLOSE);
}

