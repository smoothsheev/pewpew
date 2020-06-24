 void game() {
  background(white);
 println(mouseX, mouseY);
  
  //game engine code
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
    } else {
    i++;
    }
  }
 
 //spawn code
 if (frameCount % 60 == 0){                 //% = modulus
 objects.add(new Enemy());
 }
 
 //level reset
   if (myPlayer.xp >= 100){
      myPlayer.level++;  
        myPlayer.xp = 0;
    }
    
    
    fill(0);
      text(myPlayer.level, 500, 80);
   fill(255);
 stroke(0);
   text(myPlayer.xp, 300, 30);
   
//upgrades tab
   rectMode(CORNER);
   rect(750, 670, 250, 130);
   noStroke();
   noFill();
   
   
   
   //int k = 0;
   //while (k < 10) {
     
     
     
   //} 
}





  void gameClicks() {
 
}
