ArrayList<Zombie> zombies;

public class Zombie{
  boolean isWalking, isZombie;
  int howAlive;
  String zombieType;
  float x, y;
  PImage zb = loadImage("zom1.png");
  //int hit;
  boolean pause, eating;
  
  Zombie(float x, float y){
    this.x = x;
    this.y = y;
    isWalking = true;
    howAlive = 10000;
    isZombie = true;
    zombieType = "original";
  }
  //zombie(boolean walk, int health, String type){
    //isWalking = walk;
    //howAlive = health;
    //zombieType = type;
  //}
  void move(){
    if (!eating && !pause){
      x -= 0.3;
    }
    if (pause) pause = false;
  }

  void zombify(){
    zombieType = "original";
    
  }
  
  boolean display(){
    if (howAlive > 0){
      noStroke();
      zb.resize(80, 80);
      image(zb, x, y);
      if (isWalking){
        move();
      }
      
      //health bar
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
  
  void eating(boolean hold) {
    if (hold) isWalking = false;
    else isWalking = true;
  }
  
}
