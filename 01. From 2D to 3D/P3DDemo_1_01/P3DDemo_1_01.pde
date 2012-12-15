int x, y, z, w, h;
float angle;

void setup() {
  background(150);
  size(800, 600);
  
  x = width/2;
  y = height/2; 

  w = width/3;
  h = w;
  angle = PI/4;
}

void draw() {
  background(150);
  translate(x,y,z);
  rotateZ(angle);
  
  rectMode(CENTER);
  rect(0,0,w,h);
}
