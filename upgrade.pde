class Upgrade {
  
  float x, y; 
  int sx, sy;
  color myColor;
  
  Upgrade(color c){
    x = upx;
    y = upy;
    sx = sizex;
    sy = sizey;    
  }
  
 Upgrade(float x, float y, int sx, int sy, color c) {    //values in all objects, in order
    this.x = x;
    this.y = y;
    this.sx = sx;
    this.sy = sy;
    this.myColor = c;
  }
  
   void show() {
    fill(myColor);
    rect(x, y, sx, sy);
  }
  
  void act() {
  }
}

//class Reload extends Upgrade{
    
//  super(
  
//}
