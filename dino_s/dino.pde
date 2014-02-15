class Dino{
  PImage dino;
  float dinoX,dinoY,yPos, widthx,heighty,a,b;
  
  Dino(float tempX, float tempY){
   dinoX=tempX;
   dinoY=tempY;
   dino=dinoImage;
  }
  
  void displayDino(){
    image(dino,dinoX,dinoY, 400,600);
    dinoX=dinoX+random(-55.5,25);
    dinoY=dinoY+random(-30,50);
    dinoX=constrain(dinoX,-300,width);
    dinoY=constrain(dinoY,0,height);
  
  }

}
