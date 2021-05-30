ArrayList<Zombie> zombies;

public class Zombie{
  boolean isWalking;
  int howAlive;
  boolean isZombie;
  String zombieType;
  float x, y;
  PImage zb = loadImage("zom1.png");
  int hit;
  
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
  }

  void zombify(){
    zombieType = "original";
    
  }
  void display(){
    if (howAlive >0){
      noStroke();
      zb.resize(80, 80);
      image(zb, x, y);
      //move();
    }
    if (howAlive <=0){
      
    }
    
  
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }
  
}
