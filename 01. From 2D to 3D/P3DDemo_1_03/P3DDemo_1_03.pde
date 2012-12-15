int x, y, z, w, h;
float angle1, angle2, angle3;

void setup() {
  background(150);
  size(800, 600, P3D);
  x = width/2;
  y = height/2; 
  z = 0;
  w = width/3;
  h = w;
  angle1 = PI/3;
  angle1 = PI/6;
  angle1 = PI/9;
}

void draw() {
  background(150);
  translate(x,y,z);
  
  angle1 = (angle1 + .01);
  angle2 = (angle2 + .02);
  angle3 = (angle2 + .03);

  rotateX(angle1);
  rotateY(angle2);
  rotateZ(angle3);

  rectMode(CENTER);
  rect(0,0,w,h);
}
