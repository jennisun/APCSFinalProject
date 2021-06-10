ArrayList<Zombie> zombies;
ArrayList<Zombie> removeZombies;

public class Zombie{
  boolean isWalking, isZombie;
  int howAlive, count;
  String zombieType;
  float x, y;
  PImage zb = loadImage("zom.png");
  //int hit;
  boolean pause, pause1, pause2, eating;
  //pause = hit by shroom/pea, pause1 = eating mushroom/peashooter, pause2 = eating potato
  
  Zombie(float x, float y){
    this.x = x;
    this.y = y;
    isWalking = true;
    howAlive = 10000;
    isZombie = true;
    zombieType = "original";
    
    count = 0;
  }

  void move(){
    if (!eating && !pause && !pause1 && !pause2){
      x -= 0.3;
    }
    if (pause) {
      if (count != 10) count ++;
      else{
        pause = false;
        count = 0;
      }
    }
    
    if (pause1) {
      if (count != 50) count ++;
      else{
        pause1 = false;
        count = 0;
      }
    }
    
     if (pause2) {
      if (count != 200) count ++;
      else{
        pause1 = false;
        count = 0;
      }
    }
  }

  void zombify(){
    zombieType = "original";
    
  }
  
  boolean display(){
    if (howAlive > 0){
      zb.resize(80, 80);
      image(zb, x, y);
      
      if (isWalking) move();
      if (!pause && !pause1 && !pause2) eating = false;
      
      //health bar
      noStroke();
      fill(0, 255, 48);
      rect(x + 23, y - 20, 30, 10);
      fill(255, 255, 255);
      rect(x + 23, y - 20, (float) 30 * (10000 - howAlive) / 10000, 10);
      
      return true;
    }
    return false;
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }

  void eatingPeashooter(boolean hold) {
    if (hold) pause1 = true;
  }
  
  void eatingMushroom(boolean hold) {
    if (hold) pause1 = true;
  }
  
  void eatingPotato(boolean hold) {
    if (hold) pause2 = true;
  }
  
  boolean eating() {
    return eating;
  }

}
