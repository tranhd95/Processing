void setup() {
  background(0);
  size(1000, 400);
}

float x = 0;
float arg = 0;

float prev_x = 0, prev_y = map(sin(20*arg/10) * sin(arg/10), -1, 1, 100, 200);

void draw() {
  stroke(255);
  strokeWeight(6);
  while (x < width) {
    float y = map(2*sin(20*arg/10) * sin(arg/10), -1, 1, 100, 200);
    line(prev_x, prev_y, x, y);
    prev_x = x;
    prev_y = y;
    x ++;
    arg += 0.09;
  }
}

void mousePressed() {
  
  saveFrame("arctic_monkeys_album_cover.png");

}


/*
  float a = 0.0;
  float inc = TWO_PI/25.0;
  float prev_x = 0, prev_y = 50, x, y;
  
  for(int i=0; i<100; i=i+4) {
    x = i;
    y = 50 + sin(a) * 40.0;
    line(prev_x, prev_y, x, y);
    prev_x = x;
    prev_y = y;
    a = a + inc;
  }
*/