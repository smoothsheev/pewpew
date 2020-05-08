class Bullet extends GameObject {
  
  
  Bullet() {
    super(myPlayer.x, myPlayer.y, 5, 1, grey);
    PVector aim = new PVector(mouseX - myPlayer.x, mouseY - myPlayer.y);
    aim.setMag(10);
    vx = aim.x;
    vy = aim.y;
  }
  
  void act() {
    super.act();
    if ( x < 0 || x > width || y < 0 || y > height) {
    hp = 0;
  }
  int i = 0;
  while (i < objects.size()) {
   GameObject obj = objects.get(i);
   if (obj instanceof Obstacle) {
     if (dist(obj.x, obj.y, x, y) < obj.size/2 + size/2)  {
       hp = 0;
     }
   }
    i++;
  }
  }
}
