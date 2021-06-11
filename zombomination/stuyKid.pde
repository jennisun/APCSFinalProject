ArrayList<stuyKid> stuyKids;
ArrayList<stuyKid> removeStuyKid;

public class stuyKid{
  boolean isWalking;
  float x, y;
  //PImage zb = loadImage("zom.png");
  String zombieType;
  PImage zb;
  
  
  stuyKid(float x, float y, String type){
    zb = loadImage(type);
    zombieType = type;
    this.x = x;
    this.y = y;
    isWalking = true;
 
  }

  void move(){
     x -= 1;
  }

  void zombify(){
    zombieType = "original";
    
  }
  
  boolean display(){
    
      zb.resize(100, 100);
      image(zb, x, y-15);
      
      if (isWalking) move();
      return true;
      
      
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }

  
  void eating(boolean hold) {
    if (hold){
      isWalking = false;
    }
    if (!hold){
      isWalking = true;
    }
  }


}
