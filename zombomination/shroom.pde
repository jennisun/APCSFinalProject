ArrayList<Shroom> shrooms;
ArrayList<Shroom> removeShrooms;

public class Shroom{
  float x, y, originalX;
  boolean colliding;
  PImage shroom = loadImage("shroom.png");
  
  Shroom(float x, float y) {
    this.x = x;
    this.y = y;
    originalX = x;
    colliding = false;
  }
  
  void move() {
    x += 3;
  }
  
  void display() {
    boolean once = false;
    for (Zombie z: zombies) {
      if (!once && !z.pause && dist(x, y, z.getX(), z.getY()) < 25) {
        colliding = true;
        z.howAlive -= 300;
        z.pause = true;
        once = true;
      }
    }
    if (!colliding) {
      shroom.resize(25, 25);
      image(shroom, x, y + 20);
    }
  }
  
  float getx() {
    return x;
  }
  
  float getdist() {
    return x - originalX;
  }
  
}
