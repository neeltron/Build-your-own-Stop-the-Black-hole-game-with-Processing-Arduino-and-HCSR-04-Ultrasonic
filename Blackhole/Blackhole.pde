import processing.serial.*;
Serial myPort;  // Create object from Serial class
int sizeCirc;
String val;
float val2;
float gameVal;
int score;
int scene;
String val3;
void setup() {
  size(1920, 1080);
  fill(0);
  for(int i = 1; i<= 20; i++)
  {
    circle(random(0, 1920), random(0, 1080), 20);
  }
  sizeCirc = 20;
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600); // To find out the existing port of the arduino and establishing communication between arduino and Processing
  score = 0;
  scene = 0;
  val = "0";
  val2 = 0;
  gameVal = 0;
  val3 = "0";
}
void draw() {
  background(255);
  fill(0);
  switch(scene) {
    case 0:
      sceneStart();
      break;
    case 1:
      mainScene();
      break;
    case 2:
      sceneEnd();
      break;
  }
}
void mousePressed() {
  scene++;
}
