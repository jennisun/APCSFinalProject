ArrayList<Zombie> zombies;
ArrayList<Zombie> removeZombies;

public class Zombie{
  boolean isWalking, isZombie;
  int howAlive;
  String zombieType;
  float x, y;
  //PImage zb = loadImage("zom.png");
  PImage zb;
  boolean pause, pause1, pause2, eating;
  int count = 0;
  int count1 = 0;
  int count2 = 0;
  float speed = 1;
  //pause = hit by shroom/pea, pause1 = eating mushroom/peashooter, pause2 = eating potato
  
  Zombie(float x, float y, String type){
    zb = loadImage(type);
    zombieType = type;
    this.x = x;
    this.y = y;
    isWalking = true;
    if (type.equals("zom.png")){
      howAlive = 10000;
    }
    if (type.equals("conezom.png")){
      howAlive = 15000;
    }
    if (type.equals("pailzom.png")){
      howAlive = 20000;
    }
    if (type.equals("SK1.PNG")){
      howAlive = 50000;
      speed = 2;
    }
    if (type.equals("SK2.PNG")){
      howAlive = 50000;
      speed = 1;
    }
    
    
    //isZombie = true;
    //zombieType = "original";
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
      if (count1 != 50) count1 ++;
      else{
        pause1 = false;
        count1 = 0;
      }
    }
    
     if (pause2) {
      if (count2 != 500) count2 ++;
      else{
        pause2 = false;
        count2 = 0;
      }
    }
  }

  void zombify(){
    zombieType = "original";
    
  }
  
  void cough(){
    if (!isWalking){
      germs.add(new Germ(x, y));
    }
  }
  
  boolean display(){
    if (howAlive > 0){
      if (zombieType.equals("pailzom.png") && howAlive<10000){
        zb = loadImage("zom.png");
        zombieType = "zom.png";
      }
      if (zombieType.equals("conezom.png") && howAlive<10000){
        zb = loadImage("zom.png");
        zombieType = "zom.png";
      }
      
      //health bar
      if (zombieType.equals("zom.png")) {
        noStroke();
        fill(0, 255, 48);
        rect(x + 23, y - 20, 30, 10);
        fill(255, 255, 255);
        rect(x + 23, y - 20, (float) 30 * (10000 - howAlive) / 10000, 10);
      }
      if (zombieType.equals("conezom.png")) {
        noStroke();
        fill(0, 255, 48);
        rect(x + 23, y - 20, 30, 10);
        fill(255, 255, 255);
        rect(x + 23, y - 20, (float) 30 * (15000 - howAlive) / 15000, 10);
      }
      if (zombieType.equals("pailzom.png")) {
        noStroke();
        fill(0, 255, 48);
        rect(x + 23, y - 20, 30, 10);
        fill(255, 255, 255);
        rect(x + 23, y - 20, (float) 30 * (20000 - howAlive) / 20000, 10);
      }
      


      zb.resize(100, 100);
      image(zb, x, y-15);
      
      if (isWalking) move();
      if (!pause && !pause1 && !pause2) eating = false;

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
  void eating(boolean hold) {
    if (hold){
      isWalking = false;
    }
    if (!hold){
      isWalking = true;
    }
  }

}
