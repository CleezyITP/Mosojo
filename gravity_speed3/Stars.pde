class Stars {
  float sX, sY;
  float sW, sH;
  
  Stars(float tempSx, float tempSy, float tempSw, float tempSh){
    sX=tempSx;
    sY=tempSy;
    sW=tempSw;
    sH=tempSh;
  }
  
  void displayStars(){
    fill(random(130,255));
    ellipseMode(CENTER);
    ellipse(sX, sY, sW, sH);
  }
  
}

