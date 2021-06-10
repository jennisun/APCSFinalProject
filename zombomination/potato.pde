ArrayList<Potato> potatos;
ArrayList<Potato> removePotatos;

public class Potato {
  int howAlive;
  float x, y;
  PImage potato = loadImage("potato.png");
  
  Potato(float x, float y) {
    this.x = x;
    this.y = y;
    howAlive = 500;
  }
  
  boolean display() {
    if (howAlive > 0) {
      potato.resize(80, 80);
      image(potato, x, y);
    
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
  
  float health() {
    return howAlive;
  }
}
