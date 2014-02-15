import ddf.minim.*;

Minim minim;
AudioPlayer player;

float x=0;
float y=0;
float yPos=0;
float speed=10;
float gravity=.1;
float angle=0;
boolean drawTheDinosaur;
PImage dinoImage;
PImage dinoflipImage;

Dino[] dinos = new Dino[10];
Dinoflip[] dinosflip = new Dinoflip[10];

void setup () {
  size(800, 1000);
  smooth();
  drawTheDinosaur = false;
  dinoImage=loadImage("dino.png");
  dinoflipImage=loadImage("dinoflip.png");
  minim = new Minim(this);
  player= minim.loadFile("JP.wav");
}
void draw() {

  frameRate(20);
  background(135,206,250);
  fill(205, 183, 158);
  stroke(25);
  rectMode(CENTER);
  rect(400, 800, 900, 500);
  fill(160,82,45);
  rect(400, 550, 900, 5);
  //ROTATE EGG
  pushMatrix();
  translate(width/2, yPos);
  //Axis
  rotate(PI/2+angle);
  fill(240, 234, 214);
  stroke(100);
  ellipse(x, y, 150, 178);
  //popMatrix();
  //rotation speed
  angle -= radians(2);
  popMatrix();
  //FALL
  yPos=yPos+speed;
  speed=speed+gravity;
  

  if (yPos>500) {
  speed=speed*-.5;
  angle= radians(0);
  createShape();
  beginShape();
  fill(0);
  vertex(width/2+60, yPos+20);
  vertex(width/2+15, yPos+2);
  vertex(width/2+15, yPos+4);
  vertex(width/2+30, yPos+6);
  vertex(width/2-20, yPos+30);
  vertex(width/2+10, yPos-30);
  vertex(width/2+20, yPos+14);
  vertex(width/2+30, yPos+26);
  vertex(width/2+10, yPos+6);
  vertex(width/2+30, yPos-30);
  vertex(width/2-30, yPos+28);
  vertex(width/2+30, yPos-30);
  vertex(width/2+15, yPos+14);
  vertex(width/2+25, yPos+26);
  vertex(width/2-35, yPos+6);
  vertex(width/2+20, yPos+10);
  vertex(width/2+10, yPos+75);
  vertex(width/2+20, yPos+24);
  vertex(width/2+30, yPos+16);
  endShape(CLOSE);
  }


  if (drawTheDinosaur == true) {
    //stopMovingEgg();
    for (int i=0;i<dinos.length;i++) {
      dinos[i].displayDino();
      dinosflip[i].displayDinoflip();
    }
  }
}

void mousePressed() {
  drawTheDinosaur = true;
  player.play();
  for (int i=0;i<dinos.length;i++) {
    dinos[i] = new Dino(width/2-188, yPos-270);
    dinosflip[i] = new Dinoflip(width/2-188, yPos-270);
  }
}

//void stopMovingEgg() {
//  speed=0;
//  angle= radians(0);
//}


void drawTheDinosaur() {
  createShape();
  beginShape();
  fill(50);
  noStroke();
  vertex(width/2+60, yPos+20);
  vertex(width/2+15, yPos+2);
  vertex(width/2+15, yPos+4);
  vertex(width/2+30, yPos+6);
  vertex(width/2-20, yPos+30);
  vertex(width/2+10, yPos-30);
  vertex(width/2+20, yPos+14);
  vertex(width/2+30, yPos+26);
  vertex(width/2+10, yPos+6);
  vertex(width/2+30, yPos-30);
  vertex(width/2-32, yPos-28);
  vertex(width/2+30, yPos-30);
  vertex(width/2+15, yPos+14);
  vertex(width/2+25, yPos+26);
  vertex(width/2-35, yPos+6);
  vertex(width/2+20, yPos+10);
  vertex(width/2+10, yPos+75);
  vertex(width/2+20, yPos+24);
  vertex(width/2+30, yPos+16);
  endShape(CLOSE);
  //fill(90);
  //ellipse(width/2+10, yPos+5, 30, 35);
}

void stop()
{
  // always close Minim audio classes when you are done with them
  player.close();
  // always stop Minim before exiting
  minim.stop();
  
  super.stop();
}
  

