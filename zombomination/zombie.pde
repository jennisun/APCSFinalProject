public class zombie{
  boolean isWalking;
  int howAlive;
  boolean isZombie;
  String zombieType;
  float x, y;
  boolean beingHit;
  
  zombie(){
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
    x += 3;
    
  }
  void die(){
    
  }
  void zombify(){
    
  }
  void display(){
    
  }
  
}
