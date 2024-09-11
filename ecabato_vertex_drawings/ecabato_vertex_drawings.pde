/**
  Assignment: MakeChap3
  Student: Eric Cabato
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program is a prototype of my Vertex Drawing assignment.
  Last Modified: September 9, 2024
  */
  

void setup() {
  size(640, 360);
}

void draw() {
  background(102);
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 50.0);
  polygon(0, 0, 80, 20);  // main planet
  popMatrix();
  
 pushMatrix();
  translate(width*0.4, height*0.5);
  rotate(frameCount / 150.0);
  polygon(120, 120, 12, 3);  // asteroid 1
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 90.0);
  polygon(110, 110, 15, 3);  // asteroid 2
  popMatrix();
  
   pushMatrix();
  translate(width*0.5, height*0.52);
  rotate(frameCount / 250.0);
  polygon(110, 110, 15, 3);  // asteroid 3
  popMatrix();
  
   pushMatrix();
  translate(width*0.45, height*0.51);
  rotate(frameCount / 200.0);
  polygon(110, 110, 15, 3);  // asteroid 4
  popMatrix();
  
    pushMatrix();
  translate(width*0.6, height*0.5);
  rotate(frameCount / 100.0);
  star(0, 300, 15, 35, 5); // star 1 
  popMatrix(); 
}


void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);

}
