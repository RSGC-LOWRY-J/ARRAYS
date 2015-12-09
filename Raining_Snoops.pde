//Bloody arrays

import processing.sound.*;

//The globals

Snoop [] rain;      //Creates array for snoop
int rainCount = 30;
int current;            //What snoop is active


//Declare Soundfiles
SoundFile back;    


//Declare Images
PImage snoop;

boolean snoopDrop;

void setup() {

  size (700, 700);
  background(0);

  back = new SoundFile(this, "smoke on me.mp3");

  snoop = loadImage("snoop.png");
  back.play();
  back.amp(0.5);

  //Create snoops
  rain = new Snoop [rainCount];
  int i = 0;
  while (i < rainCount) {
    rain[i] = new Snoop(false); //Instance of array
    i++;
  }
}
{

  current = 1;
  rain[current].reset(true);
}

void draw() {

  background(random(255), random(255), random(255));
  
  rain.update(gravity);  //Makes snoop moves
}

void keyPressed()  {
  
  if (key == 'q')  {
   new Snoop(true);
   Snoop(random(700), -30, 1, 1);
  }
  
  {