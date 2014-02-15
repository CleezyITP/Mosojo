class Astro{
  PImage astro;
  int astroW, astroH;
  float angle=0;
  float x=0;
  float y=0;
  float z=500;
  
  Astro(int tempAstrow, int tempAstroh, PImage tempAstro){
    astroW=tempAstrow; 
    astroH=tempAstroh;
    astro=tempAstro;
  }
  
  void displayAstro(){
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(320)+angle,x,y,z);
  image(astro,x,y,astroW, astroH);
  popMatrix();
    
  }
  
  void astroAway(){
    astroW=astroW+5;
    astroH=astroH+5;

  } 
  
  void astroSpinout(){
    angle-=radians(.7);
    
}
}
    
  

