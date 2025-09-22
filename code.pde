void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  background(255);

  // ground
  fill(44, 237, 9);
  rect(0, 200, 400, 200);

  // path
  fill(189, 188, 187);
  rect(230, 230, 50, 180);

  // sky
  fill(66, 135, 245);
  rect(0, 0, 400, 200);

  // base of house
  fill(255);
  rect(200, 200, 80, 40);

  // door
  fill(150, 75, 0);
  rect(250, 210, 15, 30);

  // door handle
  fill(8);
  square(260, 225, 5);

  // window
  fill(189, 188, 187);
  square(210, 210, 15);
  fill(8);
  rect(210, 217, 15, 1);
  rect(217, 210, 1, 15);

  // roof
  fill(150, 75, 0);
  triangle(200, 200, 280, 200, 240, 150);

  // tree
  drawTree(140, 230, 1.0);

  // car on path
  drawCar(255, 330, 1.0);

  // sun
  drawSun(70, 70, 30);
}

void drawTree(float x, float baseY, float scale) {
  // trunk
  float trunkW = 18 * scale;
  float trunkH = 60 * scale;
  fill(120, 60, 20);
  rect(x - trunkW/2, baseY - trunkH, trunkW, trunkH);

  // canopy
  fill(30, 120, 30);
  ellipse(x, baseY - trunkH - 10 * scale, 70 * scale, 70 * scale);
  ellipse(x - 25 * scale, baseY - trunkH + 10 * scale, 60 * scale, 60 * scale);
  ellipse(x + 25 * scale, baseY - trunkH + 10 * scale, 60 * scale, 60 * scale);

  // highlight
  fill(70, 170, 70, 180);
  ellipse(x - 10 * scale, baseY - trunkH - 5 * scale, 30 * scale, 20 * scale);
}

void drawSun(float sunX, float sunY, float sunR) {
  fill(255, 255, 0);
  ellipse(sunX, sunY, sunR * 2, sunR * 2);

  // rays
  stroke(255, 255, 0);
  strokeWeight(3);
  for (int a = 0; a < 360; a += 30) {
    float x2 = sunX + cos(radians(a)) * (sunR + 25);
    float y2 = sunY + sin(radians(a)) * (sunR + 25);
    line(sunX, sunY, x2, y2);
  }
  noStroke();
}

void drawCar(float x, float y, float s) {
  // body
  fill(200, 0, 0); // red
  rect(x, y - 20 * s, 60 * s, 20 * s, 5); // main body with rounded corners

  // roof
  fill(220, 0, 0);
  rect(x + 10 * s, y - 40 * s, 40 * s, 20 * s, 5);

  // windows
  fill(135, 206, 235);
  rect(x + 15 * s, y - 38 * s, 12 * s, 16 * s, 3);
  rect(x + 33 * s, y - 38 * s, 12 * s, 16 * s, 3);

  // wheels
  fill(0);
  ellipse(x + 12 * s, y, 16 * s, 16 * s);
  ellipse(x + 48 * s, y, 16 * s, 16 * s);

  // wheel rims
  fill(180);
  ellipse(x + 12 * s, y, 6 * s, 6 * s);
  ellipse(x + 48 * s, y, 6 * s, 6 * s);
}

