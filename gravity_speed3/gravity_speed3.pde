import ddf.minim.*;

Minim minim;
AudioPlayer player;

Essploded[] essploded=new Essploded[5000];
Stars[] stars=new Stars[1000];
Globe globe;
Astro astro;
float globeZ=-350;
float astrorX;
float astrorY;
float astrocX;
float astrocY;
float astrolX;
float astrolY;
boolean globeAway;
PImage astroImage;
PImage astrorImage;
PImage astrocImage;
PImage astrolImage;
int aW=45;
int aH=45;


void setup() {
  size(1000, 1000, P3D);
  smooth();
  
  for (int i=0;i<stars.length;i++) {
    stars[i]=new Stars(random(width), random(height), random(1, 3), random(1, 3));
  }
  
  globe = new Globe(width/2, height/2, globeZ, 300);
  


for (int i=0;i<essploded.length;i++) {
    essploded[i]=new Essploded(width/2, height/2-50,5,5);
  }
  
  astrocImage=loadImage("spacestationcentre.png");
  astrorImage=loadImage("spacestationrightwing.png");
  astrolImage=loadImage("spacestationleftwing.png");
  astroImage=loadImage("ASTRO.png");
  astro = new Astro(aW, aH, astroImage);
  globeAway=false;
  
  minim = new Minim(this);
  player= minim.loadFile("space.wav");
  player.play();
}

void draw() {
  background(0);
  lights();
  

  globe.displayGlobe();
  
  for (int i=0;i<stars.length;i++) {
    stars[i].displayStars();
  }
  
  
 
  image(astrorImage, astrorX+435, astrorY+305, 300, 300);
  image(astrocImage, astrocX+350, astrocY+300, 300, 300);
  image(astrolImage, astrolX+285, astrolY+290, 300, 300);
  astro.displayAstro();
  
  
  for (int i=0;i<essploded.length;i++) {
    essploded[i].displayEssploded();
    essploded[i].makeEssploded();
  }
  
  if (mousePressed) {
    globeAway=true;
  }
  
  if (globeAway==true) {
   
    globe.globeAway();
    astro.astroAway();
    astro.astroSpinout();
    astrorX=astrorX+(random(1, 4));
    astrorY=astrorY-(random(1, 5));
    astrocX=astrocX+(random(1, 4));
    astrocY=astrocY+(random(1, 5));
    astrolX=astrolX-(random(1, 4));
    astrolY=astrolY+(random(1, 5));
  }
  
}

void stop()
{
  // always close Minim audio classes when you are done with them
  player.close();
  // always stop Minim before exiting
  minim.stop();
  
  super.stop();
}
  


