public class zombie{
  boolean isWalking;
  int howAlive;
  boolean isZombie;
  String zombieType;
  
  public zombie(){
    isWalking = true;
    howAlive = 10000;
    isZombie = true;
    zombieType = "original";
  }
  public zombie(boolean walk, int health, String type){
    isWalking = walk;
    howAlive = health;
    zombieType = type;
  }
  //public 
}
