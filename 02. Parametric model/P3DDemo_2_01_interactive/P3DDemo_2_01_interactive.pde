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
  r = 100; // This is the radius of our cylinder
}

void draw() {
  background(150);
  translate(width/2, height/2);
  
  pushMatrix();
  rotate(-PI/2);
  angle = 360f / sides;
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y );
  }
  endShape(CLOSE);
  popMatrix();
  
  pushStyle();
  fill(150);
  textSize(32);
  textAlign(CENTER);
  text(sides, 0, 12);
  popStyle();
}

void keyPressed() {
  if(keyCode == UP && sides < 20) sides++;
  if(keyCode == DOWN && sides > 3) sides--;
}

