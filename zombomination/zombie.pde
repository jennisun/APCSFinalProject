ArrayList<Zombie> zombies;

public class Zombie{
  boolean isWalking;
  int howAlive;
  boolean isZombie;
  String zombieType;
  float x, y;
  PImage zb = loadImage("zom1.png");
  int hit;
  boolean isHit;
  
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
    if (!isHit){
      x -= 0.3;
    }
  }

  void zombify(){
    zombieType = "original";
    
  }
  
  boolean display(){
    if (howAlive >0){
      noStroke();
      zb.resize(80, 80);
      image(zb, x, y);
      if (isWalking){
        move();
      }
      return true;
    }
    else {
      return false;
    }
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }
  
}
