class Player extends GameObject {
  
  float xp;
  
  Player() {
    super(width/2, height/2, 20, 1, grey, 30, 1);
    
   
  }
  
  //void show and boolean isDead are in the superclass, GameObject
  
  void act() { //override!
    super.act();
    //respond to keypresses
    if (wkey) vy = -3;
    if (akey) vx = -3;
    if (skey) vy = 3;
    if (dkey) vx = 3;
    //stop if player lets go of keys
    if (!wkey && !skey) vy = 0;
    if (!akey && !dkey) vx = 0;
    //keep player onscreen
    if (x < 0) x = 0;
    if (x > width) x = width;
    if (y < 0) y = 0;
    if (y > height) y = height;
    //shooting
    shoot();
    //upgrades
    
  }
  
  void shoot() {
    if (mousePressed){
      if (frameCount % reload == 0){  
    objects.add(new Bullet());
    
      }
  }
}
}
