import processing.pdf.*;

String fileName = "sketch-"+month()+day()+minute()+second()+".pdf";

color c1;
color c2;
color c3;
color c4;
color c5;

void setup() {
  size(500, 500, PDF, fileName);

  c1 = color(105, 210, randomGaussian()*10 + 231);
  c2 = color(167,219, randomGaussian()*10 + 216);
  c3 = color(randomGaussian()*50 + 224, randomGaussian()*50 + 228, randomGaussian()*50 + 204);
  c4 = color(randomGaussian()*10 + 243,134,48);
  c5 = color(250,randomGaussian()*10 + 105,0);
}

void draw() {
  background(c1);
  noStroke();
  
  fill(c2);
  rect(75, 75, 300, 300);
  
  fill(c3);
  ellipse(375, 375, 100, 100);
  
  noFill();
  stroke(c4);
  strokeWeight(5);
  
  pushMatrix();
    translate(0, 100);
    beginShape();
    for(int i = 50; i < width-50; i++) {
       vertex(i, sin(radians(i)*3)*50); 
    }
    endShape();
  popMatrix();
  
  fill(c5);
  noStroke();
  
  pushMatrix();
    translate(100, 250);
    rotate(radians(45));
    triangle(0, 0, 200, 0, 100, 200);
  popMatrix();
  exit(); 
}