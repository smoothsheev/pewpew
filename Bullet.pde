class Bullet extends GameObject {
  
  
  Bullet(float x, float y, float size, float hp, color c) {
    super(x, y, size, 1, c, 10, 1);
    if (c == blue) {
    PVector aim = new PVector(mouseX - myPlayer.x, mouseY - myPlayer.y);
    aim.setMag(5);
    vx = aim.x;
    vy = aim.y;
    }
    if (c == red) {
     PVector aim = new PVector(myPlayer.x - x, myPlayer.y - y);
    aim.setMag(5);
    vx = aim.x;
    vy = aim.y;
    }
  }
  
  void act() {
    super.act();
    if ( x < 0 || x > width || y < 0 || y > height) {
    hp = 0;
  }
  int i = 0;
  while (i < objects.size()) {
   GameObject obj = objects.get(i);
   if (obj instanceof Obstacle && touching(obj)) {

       hp = 0; 
   }
   if ( obj instanceof Enemy && touching(obj) && myColor == blue) {
       hp = 0;
       obj.hp--;
       myPlayer.xp = myPlayer.xp + 100;
   }
    i++;
  }
  }
}
