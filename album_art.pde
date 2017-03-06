import processing.pdf.*;

// set your file name here
String fileName = "sketch.pdf";

void setup() {
  // drawing as 500x500 PDF
  size(500, 500, PDF, fileName);
  
}

void draw() {
  
 // exit the sketch after drawing PDF 
 exit(); 
}