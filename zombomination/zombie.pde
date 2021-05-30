ArrayList<Zombie> zombies;

public class Zombie{
  boolean isWalking;
  int howAlive;
  boolean isZombie;
  String zombieType;
  float x, y;
  boolean beingHit;
  PImage zb = loadImage("zom1.png");
  
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
    x -= 0.3;
    if (beingHit){
      howAlive --;
    }
    
  }
  void die(){
    isWalking = false;
    
  }
  void zombify(){
    zombieType = "original";
    
  }
  void display(){
    noStroke();
    zb.resize(80, 80);
    image(zb, x, y);
    //move();
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }
  
}
