int CANVAS_WIDTH = 1000;
int CANVAS_HEIGHT = 800;
int kkt = 0;



void setup() {
  size(900, 700);
  background(0);
  frameRate(10);
  smooth();
}

void draw() {
  float ycoord = random(700);
  float ycoord2 = random(700);
  float ycoord3 = random(700);
  float ycoord4 = random(700);
  float ycoord5 = random(700);
  float ycoord6 = random(700);
  
  float xcoord = random(900);
  float xcoord2 = random(900);
  float xcoord3 = random(900);
  float xcoord4 = random(900);
  float xcoord5 = random(900);
  float xcoord6 = random(900);
  
  float ycoord7 = random(700);
  float ycoord8 = random(700);
  float ycoord9 = random(700);
  float ycoord10 = random(700);
  float ycoord11 = random(700);
  float ycoord12 = random(700);
  
  float xcoord7 = random( 900);
  float xcoord8 = random( 900);
  float xcoord9 = random( 900);
  float xcoord10 = random( 900);
  float xcoord11 = random( 900);
  float xcoord12 = random( 900); 
  
  fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));

  rect(0, ycoord, mouseX - mouseX * 0.15, 2);
  rect(0, ycoord2, mouseX + mouseX * 0.2, 6);
  rect(0, ycoord3, mouseX + mouseX * 0.3, 5);
  rect(0, ycoord4, mouseX - mouseX * 0.4, 8);
  rect(0, ycoord5, mouseX + mouseX * 0.5, 13);
  rect(0, ycoord6, mouseX - mouseX * 0.6, 4);
  
   fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));
  
  rect(xcoord, 0, 2, mouseY - mouseY * 0.15);
  rect(xcoord2, 0, 6, mouseY + mouseY * 0.2);
  rect(xcoord3, 0, 5, mouseY + mouseY * 0.3);
  rect(xcoord4, 0, 18, mouseY - mouseY * 0.4);
  rect(xcoord5, 0, 3, mouseY + mouseY * 0.5);
  rect(xcoord6, 0, 4, mouseY - mouseY * 0.6);
  
   fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));
  
  rect(CANVAS_WIDTH, ycoord7, -mouseX - mouseX * 0.15, 2);
  rect(CANVAS_WIDTH, ycoord8, -mouseX + mouseX * 0.2, 6);
  rect(CANVAS_WIDTH, ycoord9, -mouseX + mouseX * 0.3, 15);
  rect(CANVAS_WIDTH, ycoord10, -mouseX - mouseX * 0.4, 3);
  
   fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));

  rect(xcoord7, CANVAS_HEIGHT, 2, -mouseY - mouseY * 0.15);
  rect(xcoord8, CANVAS_HEIGHT, 8, -mouseY + mouseY * 0.2);
  rect(xcoord9, CANVAS_HEIGHT, 4, -mouseY - mouseY * 0.3);
  rect(xcoord10, CANVAS_HEIGHT, 3, -mouseY + mouseY * 0.5);
  rect(xcoord11, CANVAS_HEIGHT, 7, -mouseY + mouseY * 0.2);
  filter(BLUR);
  kkt++;
  if (kkt % 2 == 0) {
    filter(ERODE);
  }
  if (kkt % 11 == 0) {
        filter(POSTERIZE, 20);}
  

}

void mousePressed() {
  noLoop();
  filter(POSTERIZE, 5);
  redraw();
  
}