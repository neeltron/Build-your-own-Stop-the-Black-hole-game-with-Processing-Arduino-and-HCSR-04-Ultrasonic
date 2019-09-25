void sceneStart() {
  background(255);
  for (int i = 1; i<= 50; i++)
  {
    circle(random(0, 1920), random(0, 1080), 20);
  }
  fill(0);
  textSize(64);
  text("Stop the Black Hole!", 610, height/2-50);
  textSize(40);
  text("Click anywhere to begin.", 680, height/2+40);
}
