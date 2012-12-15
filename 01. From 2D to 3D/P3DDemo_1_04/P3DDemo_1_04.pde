void setup() {
  background(150);
  size(800, 600, P3D);
}

void draw() {
  
  background(150);
  
  fill(255);
  
  translate(width/2, height/2, 0);

  scale(100);
  
  rotateX( frameCount*.01 );
  rotateY( frameCount*.02 );
  rotateZ( frameCount*.03 );
  
  beginShape();
  vertex(-1, -1, 0);
  vertex( 1, -1, 0);

  vertex( 1, -1, 0);
  vertex( 1,  1, 0);

  vertex( 1, 1, 0);
  vertex(-1, 1, 0);

  vertex(-1,  1, 0);
  vertex(-1, -1, 0);
  endShape();
  
}

