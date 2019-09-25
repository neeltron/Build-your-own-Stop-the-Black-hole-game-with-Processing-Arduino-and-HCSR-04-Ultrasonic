void mainScene() {
  if ( myPort.available() > 0) 
  {  // If data is available,
    val = myPort.readStringUntil('\n');
    if (val != null) {
      val3 = val.replaceAll("[^\\d.-]", ""); // To replace all the random unwanted characters with nothing, coming from the connected port.
    }
    if (val3 == null || val3 == "") {
      val3 = "0";
    }
    else {
      // read it and store it in val
      val2 = Float.parseFloat(val3);
    }
    float mappedVal = map(val2, 0, 15, 0, 400);
    println(val);
    if (mappedVal == 0) {
      mappedVal = 3;
    }
    if (val2 == 0) {
      val2 = 8;
    }
    if (val2 <= 7 && scene == 1) {
      gameVal-=6;
      score += 10;
    }
    else {
      score += 0;
    }
    if (gameVal <=10)
    {
      circle(random(0, 1920), random(0, 1080), gameVal);
    }
    if (gameVal > 1080) {
      scene = 2;
      sceneEnd();
    } else {
      circle(width/2, height/2, gameVal);
      score -= 5;
    }
  }
  gameVal+=5;
}
