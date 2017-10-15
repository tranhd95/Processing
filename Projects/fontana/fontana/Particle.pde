class Particle {

  PVector location;
  PVector acceleration;
  PVector velocity;
  color fillColor;

  Particle(float x, float y) {
    location = new PVector(x, y);
    acceleration = new PVector(0, 0.09);
    velocity = new PVector(0, 3);
  }

  void display() {
    fill(fillColor);
    ellipse(location.x, location.y, 8, 8);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }

  void setAcceleration(PVector vector) {
    acceleration = vector;
  }

  void setAcceleration(float x, float y) {
    acceleration = new PVector(x, y);
  }
  
  void setColor(color c) {
    fillColor = c;
  }
}