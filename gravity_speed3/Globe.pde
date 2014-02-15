class Globe{
  float globeX,globeY,globeZ,s,rotateSpeed; 
  //globe constructor
  Globe(float tempX, float tempY,float tempZ, float tempS){
   globeX=tempX;
   globeY=tempY;
   globeZ=tempZ;
   s=tempS;
  }
  
  void displayGlobe(){
    pushMatrix();
    translate(globeX,globeY,globeZ);
    rotateY(radians(60));
    rotate(PI/3,globeX, globeY, globeZ);
    stroke(205,20);
    fill(170);
    sphere(s);
    spotLight(200,200,255, width, 0, 0, 0, -1,0, PI/2, 1);
    popMatrix();
  }
  
  void globeAway(){
    globeZ=globeZ-20;
  }
}
