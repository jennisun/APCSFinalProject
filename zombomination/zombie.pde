public class zombie{
  boolean isWalking;
  int howAlive;
  boolean isZombie;
  String zombieType;
  float x, y;
  boolean beingHit;
  
  zombie(float x, float y){
    this.x = x;
    this.y = y;
    isWalking = true;
    howAlive = 10000;
    isZombie = true;
    zombieType = "original";
  }
  zombie(boolean walk, int health, String type){
    this.x = x;
    this.y = y;
    isWalking = walk;
    howAlive = health;
    zombieType = type;
  }
  void walk(){
    x -= 3;
    if (beingHit){
      howAlive --;
    }
    
  }
  void die(){
    isWalking = false;
    
  }

  void display(){
    PImage zombie = loadImage("zombie.png");
    zombie.resize(25, 25);
    image(zombie, x, y);
    walk();
    
  }
  
}
