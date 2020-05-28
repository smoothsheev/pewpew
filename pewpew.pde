//Game Objects
ArrayList<GameObject> objects;
Player myPlayer;

//color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;
color grey = #909090;
color darkgrey = #5F5F5F;

//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//key variables;
boolean wkey, akey, skey, dkey, spacekey, onekey, twokey, threekey, fourkey, fivekey, sixkey;


//text
PFont font;
int shadowOffset = 8;

//upgrade variables
float upx, upy;
int sizex, sizey;

//#################################### SETUP ###############################################

void setup() {
  //graphics
  size(1000, 800);
  rectMode(CENTER);
  noStroke();

  //fonts
  textAlign(CENTER, CENTER);

  //initialize key variables
  wkey = akey = skey = dkey = spacekey = onekey = false;

  //Game Object initializations
  objects = new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
  
  int i = 0;
  while (i < 100) {
    objects.add(new Obstacle());
    i++;     
  }
  
  //int j = 0;
  //while(i < 10) {
  //  objects.add(new Upgrade());
  //  j++;  
  //}
  
  
  
}

//##################################### DRAW ################################################

void draw() {
  println(objects.size());
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
