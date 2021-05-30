ArrayList<Mushroom> mushrooms;

public class Mushroom{
  float x, y;
  boolean attack;
  PImage mushroom = loadImage("mushroom.png");
  
  Mushroom(float x, float y) {
    this.x = x;
    this.y = y;
    attack = false;
  }
  
  void display() {
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
  }
  
  void attack() {
    if (attack) shrooms.add(new Shroom(x + 80, y + 20));
  }
  
  void attack(boolean hold) {
    attack = hold;
  }
  
}
