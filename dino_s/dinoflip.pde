class Dinoflip{
  PImage dinoflip;
  float dinoflipX,dinoflipY,a,b;
  
  Dinoflip(float tempX, float tempY){
   dinoflipX=tempX;
   dinoflipY=tempY;
   dinoflip = dinoflipImage;
  }
  
  void displayDinoflip(){
    image(dinoflip,dinoflipX,dinoflipY, 400,600);
    dinoflipX=dinoflipX+random(-25,55.5);
    dinoflipY=dinoflipY+random(-30,50);
    dinoflipX=constrain(dinoflipX,-100,width);
    dinoflipY=constrain(dinoflipY,0,height);

}

}
