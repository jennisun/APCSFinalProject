ArrayList<Mushroom> mushrooms;

public class Mushroom{
  float x, y;
  boolean attack;
  PImage mushroom = loadImage("mushroom.png");
  
  Mushroom(float x, float y) {
    this.x = x;
    this.y = y;
    attack = true;
  }
  
  void display() {
    mushroom.resize(80, 80);
    image(mushroom, x, y);
  }
  
  void attack() {
    if (attack) shrooms.add(new Shroom(x + 80, y + 20));
  }
  
  void attack(boolean hold) {
    attack = hold;
  }
  
}
