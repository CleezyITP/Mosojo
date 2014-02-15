class Essploded {
  float edX=width/2; 
  float edY=height/2;
  float edW, edH;
  boolean essplodeshow;
  boolean essplodestay;
  
  Essploded(float tempEdx, float tempEdy, float tempEdw, float tempEdh){
    edW=tempEdw;
    edH=tempEdh;
    edX=tempEdx;
    edY=tempEdy;
    globeAway=false;
  }
  
  void displayEssploded(){
    if(mousePressed){
    fill(255, random(0,120),0,30);
    ellipseMode(CENTER);
    ellipse(edX, edY, edW, edH);
    }
  }
  
  void makeEssploded(){
    if(mousePressed){
    edX=edX+(random(-150.1,170.1));
    edY=edY+(random(-150.1,170.1));
    }
    
  }
  
}
