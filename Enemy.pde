class Enemy extends GameObject {
  
  Enemy() {
    super(random(0, width), random(0, height), 20, 1, black, 10, 1);   
  }
  
  void act() {
    super.act();
    
  }
}
