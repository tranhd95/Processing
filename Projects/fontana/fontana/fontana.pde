ArrayList<Particle> _particles = new ArrayList();

PImage photo;

float _step = 2;
float _diameter = 8;

void setup() {
  size(720, 720);
  background(0);
  fill(255);
  noStroke();
  photo = loadImage("thumbsup.jpg");
  photo.loadPixels();
  _row = photo.height;
}


int _row;

void draw() {
  background(0);
  if (frameCount % 2 == 0) {
    for (int i = 0; i < width; i += _step + _diameter) {
      Particle newParticle = new Particle(i, 0);
      newParticle.setColor(photo.get(i, _row));
      _particles.add(newParticle);
    }
    _row -= 2;
  }


  for (Particle p : _particles) {
    p.display();
  }


  for (Particle p : _particles) {
    p.update();
    p.acceleration.add(new PVector(0, random(-0.001, 0.001)));
  }
}