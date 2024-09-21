void setup() {
  size(300, 300);
  noLoop();
}

void draw() {

  for (int yStep = 0; yStep < 1000; yStep++) {
    for (int xStep = 0; xStep < 1000; xStep++) {
      stroke(0, xStep, yStep);
      point(xStep, yStep);
    }
  }

  //shape of scale with curve vertex
  for (int y = 0; y < 500; y = y + 28) {
    for (int x = 0; x < 500; x = x + 35) {
      flashing (x, y);
    }
  }
}



void flashing(int x, int y) {
  noFill();
  stroke(0);
  strokeWeight(2);
  beginShape();
  curveVertex(x, y-10);
  curveVertex(x, y-10);
  curveVertex(x-15, y+5);
  curveVertex(x-10, y+10);
  curveVertex(x, y+15);
  curveVertex(x, y+15);
  endShape();

  beginShape();
  curveVertex(x, y-10);
  curveVertex(x, y-10);
  curveVertex(x+15, y+5);
  curveVertex(x+10, y+10);
  curveVertex(x, y+15);
  curveVertex(x, y+15);
  endShape();
}

