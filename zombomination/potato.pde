ArrayList<Potato> potatos;
ArrayList<Potato> removePotatos;

public class Potato {
  int howAlive;
  float x, y;
  boolean attack;
  PImage mushroom = loadImage("potato.png");
  
  Potato(float x, float y) {
    this.x = x;
    this.y = y;
    attack = false;
    howAlive = 600;
  }
  
  boolean display() {
    if (howAlive > 0) {
      mushroom.resize(50, 50);
      image(mushroom, x + 20, y + 20);
    
      boolean change = false;
      for (Zombie z: zombies) {
        if (z.getY() == y && z.getX() - x <= 300) {
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
    if (attack) shrooms.add(new Shroom(x + 80, y + 20));
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
  
  float health() {
    return howAlive;
  }
}
