class Snoop {
//Declare Image for snoop
  PImage snoop;

//Variables for snoop
  float x1;
  float y1;
  float s1;
  float a1;
  
  //Variable for snoop being active
  boolean active;

//Constructor
  Snoop(float x_, float y_, float s_, float a_) {
    x1 = x_;
    y1 = y_;
    s1 = s_;
    a1 = a_;
  }

  Snoop (boolean active_) {
    active = active_;
  if (active == true) {
    //When active, reset method is true and Snoop is ready for use
    reset(true);
  }
  }

void reset(boolean active_)  {
 
  x1 = -40;
  y1 = -40;
  
  
  active = active_;  //Set wether snoop is active
  
  
  
}

  void update(float g) {

    snoop = loadImage("snoop.png"); 
    
    image(snoop, -40, -40, 40, 40);


if (active == true)  {

    y1 = y1 + s1;    //Movement downwards
    s1 = s1 + y1;    //Acceleration downwards
    
}else{
  
  x1 = -40;
  y1 = -40;
  s1 = 0;
    
}
  }

  //Get x position of snoop
  float getX() {
    return x1;
  }

  //Get Y position of snoop
  float getY() {
    return y1;
  }
}