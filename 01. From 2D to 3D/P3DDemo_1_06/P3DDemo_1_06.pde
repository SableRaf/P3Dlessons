void setup() {
  background(150);
  size(800, 600, P3D);
}

void draw() {
  
  background(150);
  
  translate(width/2, height/2, 0);

  noFill();
  
  //lights();

  scale(100);
  
  rotateX( radians( frameCount*0.1 ) );
  rotateY( radians( frameCount ) );
  rotateZ( radians( frameCount ) );
  
  //draw bottom
  beginShape();
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 1, 1, -1);
  vertex(-1, 1, -1);
  //vertex(-1, -1, -1);
  endShape(CLOSE);
  
  //draw triangle 1
  beginShape();
  vertex(-1, -1, -1);
  vertex(0, 0, 1);
  vertex( 1, -1, -1);
  endShape(CLOSE);
  
  //draw triangle 2
  beginShape();
  vertex( 1, -1, -1);
  vertex(0, 0, 1);
  vertex( 1, 1, -1);
  endShape(CLOSE);
  
  //draw triangle 3
  beginShape();
  vertex( 1, 1, -1);
  vertex(0, 0, 1);
  vertex(-1, 1, -1);
  endShape(CLOSE);
  
  //draw triangle 4
  beginShape();
  vertex(-1, 1, -1);
  vertex(0, 0, 1);
  vertex(-1, -1, -1);
  endShape(CLOSE);
  
}

