ArrayList<Peashooter> peashooters;

public class Peashooter{
  float x, y;
  boolean attack;
  PImage peashooter = loadImage("peashooter1.png");
  
  Peashooter(float x, float y) {
    this.x = x;
    this.y = y;
    attack = true;
  }
  
  void display() {
    peashooter.resize(80, 80);
    image(peashooter, x, y);
  }
  
  void attack() {
    if (attack) peas.add(new Pea(x + 80, y + 20));
  }
  
  void attack(boolean hold) {
    attack = hold;
  }
  
}
