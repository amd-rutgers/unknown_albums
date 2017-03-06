import processing.pdf.*;

String fileName = "sketch.pdf";

PFont bigCaslon;
PFont helvetica;
float angle;

void setup() {
  size(500, 500, PDF, fileName);
  background(255);
  fill(0);
  
  String[] fontList = PFont.list();
  printArray(fontList);
  
  bigCaslon = createFont("BigCaslon-Medium", 48);
  helvetica = createFont("Helvatica", 20);

  float angleMin = radians(0);
  float angleMax = radians(90);
  angle = random(angleMin, angleMax);
}

void draw() {
  pushMatrix();
    textFont(bigCaslon, 48);
    float textX = random(0, 250);
    text("The Clash", textX, 60);
  popMatrix();
  

  String albumTitle = "LONDONCALLING";
  
  textFont(helvetica, 20);
  //textMode(SHAPE);
  textAlign(RIGHT);
  
  for(int i = 0; i < albumTitle.length(); i++) {
    text(albumTitle.charAt(i), random(120, 300), random(120, 300));
  }
  
  noFill();
  stroke(0);
  rect(100, 100, 300, 300);

  exit();
}