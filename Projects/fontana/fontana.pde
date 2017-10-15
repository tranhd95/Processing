
int NUMBER_OF_VERTICES = 8;
PVector[] vertices = new PVector[NUMBER_OF_VERTICES];

void setup() {
  size(720, 720);
  background(0);
  for (int i = 0; i < vertices.length; i++) {
    float x = random(0, width);
    float y = random(0, height);
    vertices[i] = new PVector(x, y);
  }
}


void draw() {
  background(0);
  stroke(255);
  strokeWeight(15);
  noFill();
  
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < vertices.length; i++) {
    PVector v = vertices[i];
    vertex(v.x, v.y);
  }
  endShape(CLOSE);

  for (PVector v : vertices) {
    v.add(new PVector(random(-3, 3), random(-3, 3)));
  }
}