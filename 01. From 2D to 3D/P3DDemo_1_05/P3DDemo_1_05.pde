void setup() {
  background(150);
  size(800, 600, P3D);
}

void draw() {
  
  background(150);
  
  translate(width/2, height/2, 0);

  scale(100);
  
  
  rotateX( cos(radians(frameCount)) );
  rotateY( cos(radians(frameCount)) );
  rotateZ( cos(radians(frameCount)) );
  
  beginShape();
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 0,  0,  1);

  vertex( 1, -1, -1);
  vertex( 1,  1, -1);
  vertex( 0,  0,  1);

  vertex( 1, 1, -1);
  vertex(-1, 1, -1);
  vertex( 0, 0,  1);

  vertex(-1,  1, -1);
  vertex(-1, -1, -1);
  vertex( 0,  0,  1);
  endShape();
  
  
}

