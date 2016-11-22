void setup() {
  size(1080, 1080);
  smooth();
  frameRate(30);
  background(188, 133, 175);
}

void wave(float r, float g, float b, int noiseFactor, float time, float heightShift) {
  float x = 0;
  while (x < width) {
    strokeWeight(1.5);
    stroke(r, g, b);
    point(x, time*height * noise(x/noiseFactor, time) + heightShift);
    x++;
  }
}

float TIME = 0;
boolean CAPTURING = false;

void draw() {
  fill(188, 133, 175, 1);
  noStroke();
  rect(0, 0, width, height);

  float abc = 0;
  while (abc < width) {
    stroke(188, 133, 175);
    line(abc, 0.7*TIME*height * noise(abc/800, TIME) -height/11, abc, 0);
    abc++;
  }


  wave(135, 17, 234*TIME*0.25, 600, TIME, 0);
  //wave(188, 133, 175, 300, TIME);
  //wave(188, 133, 175, 400, TIME);
  TIME += 0.01;

  if (TIME > 2) {
    TIME = 0.13;
    filter(BLUR);
  }

  if (CAPTURING) {
    saveFrame("frame-###.png");
  }

  // 450 / 30 = 15
  if (CAPTURING && frameCount % 450 == 0) {
    noLoop();
  }
  println(frameCount);
}

void mousePressed() {
  filter(BLUR);
}