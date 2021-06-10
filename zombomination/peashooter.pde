ArrayList<Peashooter> peashooters;
ArrayList<Peashooter> removePeashooters;
boolean display;

public class Peashooter{
  int howAlive;
  float x, y;
  boolean attack;
  PImage peashooter = loadImage("peashooter1.png");
  
  Peashooter(float x, float y) {
    this.x = x;
    this.y = y;
    attack = false;
    howAlive = 30;
  }
  
  boolean display() {
    //void display(){
    if (howAlive > 0) {
      peashooter.resize(80, 80);
      image(peashooter, x, y);
    
      boolean change = false;
      for (Zombie z: zombies) {
        if (z.getY() == y) {
          attack = true;
          change = true;
        }
      }
      if (!change) attack = false;
      return true;
    }
    return false;
  }
  
  void attack() {
    if (attack) peas.add(new Pea(x, y));
  }
  
  void attack(boolean hold) {
    attack = hold;
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }

}
