ArrayList<zombie> zombies;

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
  //zombie(boolean walk, int health, String type){
<<<<<<< HEAD
  //  this.x = x;
  //  this.y = y;
  //  //isWalking = walk;
  //  //howAlive = health;
  //  //zombieType = type;
=======
    //isWalking = walk;
    //howAlive = health;
    //zombieType = type;
>>>>>>> fca7ea2b46d8df54299fd7564087dc7b7c07fc65
  //}
  void move(){
    x -=3;
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
    PImage zb = loadImage("zom1.png");
    zb.resize(80, 80);
    image(zb, x, y);
    //move();
    
    if (isWalking = true){
      move();
    }
    
  }
  
}
